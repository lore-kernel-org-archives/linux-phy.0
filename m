Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FBCBD2A551
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 21:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4Ar0geslIJjC1lq7TMNy+KRtcRx2APJf5PXNDam9yw=; b=iIHp3hp6FlyFjv
	OpyQVpx8BDY4zq1a5w69ja/wp9GRrSIHgdXv6ayYoCMMDoHTNEkdyAvwR9vIQcs7HqZEwjNPLJm3j
	9KwTcGJdVm1bGxxAHWbDRCDtrjP0YH9K7KXljVskwLJOmAznNLbS4r5mAVrGstWRxieK1VC/ps4vF
	ogEXzDItb7mHv2JoZfapzwduX5OPfNvtaula37tMF7zM8b2r9CYxPeJuJzW1w3hmYBytNEz8JSRSi
	n9FlwdDvSbSHbhYhbRy+CxkvIpmjTje+6v3HixoyMUZgEGpTrCvTB5T3fYHlUUtkYy+YAXxI3uT2F
	ZCnWCXNGrBW/l9wSO6GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH0l-00000008gZ7-0ORz;
	Thu, 04 Dec 2025 21:37:15 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH0f-00000008gVo-193R
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 21:37:13 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id AC2E76007C1A;
	Thu,  4 Dec 2025 21:27:30 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id XNRBWlhjOxY5; Thu,  4 Dec 2025 21:27:28 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 0CEF46007C2B;
	Thu,  4 Dec 2025 21:27:28 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1764883648;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ju0IKFzoz63GeJ4sByij1Pot+ZusvvtRcKzP/L0CthY=;
	b=pUrFTV2IU+7vUAWpptYhfZS68J9pG50NogQCK9iP6QyiMIOs2FTbqL1KJz3OeeIGWS/Sdg
	SAJkQ6dEvXMpcSDZLOCMkaBO8L1zH1kmKCFbuWGeeityWIlzS3SlmQPgok813lk2MAgtjG
	pp5VYhHFDfVXvfcLrkx4m3OaSJ6LYQs63uQQSCUlz0+jar16lMWjEjEHl7sRyuWGLf6pJ6
	ckgq+zbzepcOcQAEYX3w9wE3x3t3zaJW9qmo8Dfbv5+ioYGfLdoOPD/gsuyBACL9FSoABD
	28gAriKHQZhfSbIVWXvTN0/gHry2X2OnFc+dR+r3U+xGoMxsNd3eiM3qet+G3w==
Received: from [192.168.1.151] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 3A76A36013E;
	Thu,  4 Dec 2025 21:27:26 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Date: Thu, 04 Dec 2025 21:27:21 +0000
Subject: [PATCH 5/5] arm64: tegra: smaug: Add usb-role-switch support
MIME-Version: 1.0
Message-Id: <20251204-diogo-tegra_phy-v1-5-51a2016d0be8@tecnico.ulisboa.pt>
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
In-Reply-To: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
To: Mathias Nyman <mathias.nyman@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764883644; l=854;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=k5kseAlh5a9PKK6R0Ldzp853p/wTGU015EJUvqBOXS8=;
 b=28zNziToJmNiz0XMrWNVpPoY4soMnfoxl9fgEfUGM+2G4OrGSzVb5cQqeu0zyGk2adkYiprkF
 5WxkvW2G82XBStGxypKDOifVbDOfcxsPQ5O59/Ezu6ZXDxzox7QSLBE
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_133709_787334_42DA13BF 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The USB2 port on Smaug is configured for OTG operation but lacked the
required 'usb-role-switch' property, leading to a failed probe and a
non-functioning USB port. Add the property along with setting the default
role to host.

Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
---
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index b8d854f90be7..49bf23d6f593 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -1809,6 +1809,8 @@ usb2-0 {
 				status = "okay";
 				vbus-supply = <&usbc_vbus>;
 				mode = "otg";
+				usb-role-switch;
+				role-switch-default-mode = "host";
 			};
 
 			usb3-0 {

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
