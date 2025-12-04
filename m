Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1080D2A545
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 21:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlwPCN8TZUMwv5RwG0kRu95iRrMFDldHX84bQkeYmTI=; b=m6F/+asdY3XZD2
	gVJcLPsMEQnl3MELi8IEIFY5JwgbeoPk4eWMjVy5RT8wmAiPpVQzpdxMStDxF3VX6A8ov+n9CFmmN
	rGynACDVBCPtqy9mpOhAnnSoh4GMNj/v+4Cr+FFZxA2wgUI78rIDSjGzPammfY0h23q2VdNqibEue
	JyI7kvKOskhpQ0wtfROsk3PlW1kSeBo24sWrUESSdN9+UeKPyY27PMvLepsLw108MGUwTRQLH/AKV
	Iy/SEkpC3tkQP3Ph5GipWnc0w5zorli4hdT+UIBsyd0VvweSd4MKYUDBdp7CMEgEc+AQJ/Ugt1bdm
	/rVVQ1TWl7OO5k7dUjyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH2H-00000008ggX-0ta4;
	Thu, 04 Dec 2025 21:38:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRH2F-00000008ggO-0lSQ
	for linux-phy@bombadil.infradead.org;
	Thu, 04 Dec 2025 21:38:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=aM83Mw77rc4YXSunFcfwV7YHy4i8gIDVF0RJQ/BhVzk=; b=LiAIt/RP4/YcCgzVwSFj7uD9Fx
	6xaaQPpVSddkzEfskCF+Z27T7PH/DIVhudSKVjf0pZzBGihFyz212HGN5LOplSa85mWoHSmlXh25w
	hs0SupOFtCi/liHifja0blLyNdW8RqRrteHSztLbTDUlWT5iow4e+YDJvs0Ma+yXXpSV0LQ0vWMBK
	T/3b1PjkePKD7oeLagdkztZ8KuDMNwr89G2zgypURHJZLp8+Ixka5NV+laaheNPUg33f1wjVHakxZ
	TJKW////8z17RiyH3tLaDj4rKx1uBRHhoOS8XG6JTISV20rm0Xxp34Mz2m2bcIR2sSVVbTazVu8Tu
	vio6yIjQ==;
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRG9K-00000004xVi-1l9r
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 20:42:05 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 751846007C07;
	Thu,  4 Dec 2025 21:27:30 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id LtbYQ1UNms0M; Thu,  4 Dec 2025 21:27:28 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 4C6BE6007C2A;
	Thu,  4 Dec 2025 21:27:26 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1764883646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aM83Mw77rc4YXSunFcfwV7YHy4i8gIDVF0RJQ/BhVzk=;
	b=bjzMUT0dNT9EyFzPJm70pDW9tN/aT9KJ5QlvIf+ZKkIgHyFlLWFUtVf/WvvrQkk1jGJxYi
	kZJln2MBCPT4EhTipG4fsOCUaQlqmm5R4ofkkxfhTpq0257GJhxhiAXRDDhGn6JCZpA0Mh
	uzqxeoMSkh6OSkrDpdYbz86SJPBKVOLE2YdG3UHuf4hlewMVWITcFRDo/LC6m5u1a9crh3
	X5blxrCsLBZXNO45VptaSXF+PaHwe2GgqTwgK1RE+Ng+BEtZf9FT/EY0L9WfRGsftzR2/b
	WxknAPxD/mwg2LhTPk5MIn2pym/wCxAW05KPbijoIwPPYMj+1YdDWlBAiUstHQ==
Received: from [192.168.1.151] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 1DCF336013D;
	Thu,  4 Dec 2025 21:27:26 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Date: Thu, 04 Dec 2025 21:27:20 +0000
Subject: [PATCH 4/5] arm64: tegra: smaug: Complete and enable tegra-udc
 node
MIME-Version: 1.0
Message-Id: <20251204-diogo-tegra_phy-v1-4-51a2016d0be8@tecnico.ulisboa.pt>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764883644; l=925;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=sfqv4Sr+OMnIY9gPi8e20yGHX5crm0dHFpzYIkqQThU=;
 b=BnvupjdKsXMIGOQCbH1KdJqWRnJzGtzyBQhBhW5BNYfMdgIF5DCTYTD+y1ag5U/rOm+mlLqyl
 AJrDL5z+BbNADkNyhq8HkkWwDr5sSqY+TsGyLKDTpY+Ss7c1gvwnNFF
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_204203_847543_8260C742 
X-CRM114-Status: UNSURE (   8.00  )
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

Complete the missing properties in the tegra-udc node and enable it for
Smaug.

Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
---
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index 5aa6afd56cbc..b8d854f90be7 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -1843,6 +1843,17 @@ mmc@700b0600 {
 		status = "okay";
 	};
 
+	usb@700d0000 {
+		phys = <&{/padctl@7009f000/pads/usb2/lanes/usb2-0}>,
+		       <&{/padctl@7009f000/pads/pcie/lanes/pcie-6}>;
+		phy-names = "usb2-0", "usb3-0";
+
+		avddio-usb-supply = <&avddio_1v05>;
+		hvdd-usb-supply = <&pp3300>;
+
+		status = "okay";
+	};
+
 	clock@70110000 {
 		status = "okay";
 		nvidia,cf = <6>;

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
