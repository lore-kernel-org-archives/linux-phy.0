Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3840CA5FCB
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 13:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LV+5m6EEbKZsq9PPSTcI1SdHPKzJvavjN3b4x3PRA08=; b=UggcTqlRCpYTFH
	aLe12GLxs39jKZ/1jinURTHnz6ZYuAy/L/xIOHU/C1MTzUHGnCbL2tVKpPJd+VQRHSrkQAFV4hkUE
	e3SLIzrqWgBXDDXHHFJxeSRBrEWRAfBfXAdTYv1BdrNW4FRziSSPsUNAyRRwKVm7Q41BgM+W5N/2X
	EjxQsdcuU6CiEc4xeQ3/yWH2m7KQ7Ym2dir977MjA61c0ZtNaDQYjHODQ+hbqIIxBFyPDe9vemvbH
	e2p2HqMH8mUnwT7VWCWP/8EZBRxa0Q3cPZetcH2stK7m3pQxymYPREUneAnHtaVlX7j1J6O9v6ZsQ
	woaCPP63FEzP2LsEtOwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGb2-00000009Btt-2N44;
	Thu, 01 Oct 2026 13:13:12 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGaw-00000009Bn8-0yuI;
	Thu, 01 Oct 2026 13:13:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1790860382;
	bh=t6lInvK3aRwDH9VyS1NNHIgQfFT/8Cs0hOtlMTScPJs=;
	h=From:Subject:Date:To:Cc:From;
	b=nO5KZFbpPnrlr2fNq2mWrGQRh3S8UYQvgNeXjd3fMxvB6YIRPDIynqhEMUdStQlng
	 ofsbm6MTjVH9MK6henmgbIpozHVEEEBIdX4/Lzg1wtYYn7ckfsd+gbGXftnwlbBiTE
	 O7ONmEKOGW3qzmvNfSzQHsIzEd+PvgAM+I8p3E5rFf4qFUGXeu+AfuaMorRWqGHdOK
	 Dauz6I7+EQxwuBNj9Q3wW8Gqc5RlGIAIHLPI8ITJZxvPLAq0jVEZethx6XPnUxSqYP
	 A7U5hZSgLR7qazAiXfk0o+G9PVHgWx4AfmCTpSBzwa5oy+M7Jdz34kNNqVnxWBQIYu
	 3CRxdCLdO7DIw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 72FED17E0524;
	Thu, 01 Oct 2026 15:13:02 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2284448002B; Thu, 01 Oct 2026 15:13:02 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v2 0/4] phy: rockchip: inno-usb2: ensure PHY is running
 when clock is requested
Date: Thu, 01 Oct 2026 15:12:38 +0200
Message-Id: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-0-e01bf509359e@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/5WOSw6CMBRFt0I69hla5efIfRgG9LXYp9CSFoiEs
 HcLrsDhubm/lQXtSQd2S1bm9UyBnI0gTglD09inBlKRmUhFnlZpCYNZwDt8o6EByFoHU5ACsIs
 atPQBrVSeyaxoy/LKYs3gdZSPiUf94zDJl8Zx790dhsLo/HJ8mPnu+2Nu5sChLVRW4YXLGLmj6
 7pGOt+c0fWs3rbtC0Y6ag/mAAAA
X-Change-ID: 20260908-phy-rockchip-inno-usb2-clock-fix-edd65b57f884
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Igor Paunovic <royalnet026@gmail.com>, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2034;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=t6lInvK3aRwDH9VyS1NNHIgQfFT/8Cs0hOtlMTScPJs=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGq+XF1biLFiroa0UA9ehqBv4ImnysmtIuG8b
 LupGTnctScLiokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqvlxdAAoJENju1/PI
 O/qaefAQAJ9MtP8RAG3vVkfvbaag4HVkc+TIPMChNWiidphZT0NSriInc75M4hlgOEEpJY3TE1a
 ljYyIiQJV7E41/9i0A7bENufCeDS6WVquKMPMHMgttP7YiYRcmQpZnAst2IvbKu7jApgOrIzHxd
 XuT5FuM+hOZTCtMKawiYA3QGxUCcK9SnjmMpNBnf+InfKp2xDvWKxSNiBsGLXpPKoT5htl+nl6z
 iSiqzKOPCwGrtSU+n4ga4RUBFUqavAz+LhCp1ECt9U5AebU32vpjIH51TJ5pvxcVYSgR8DMIrqx
 SmpAP3krF8u998OGSLwzbUCOkOuvFPQy3OXDoGR8LE0MqbrzyRfXsZFArmpcmyxKRyg/mZRqym3
 7tJd84FSfFh6rDiZvovoET09eolvUk0pzzDPvr/R5By7UKxC+eT/zt/pflkSdst35iqVSs/5kEE
 WWQ4W6yNSZcNXBySEO+dI6ubDQEa4mQ3XFjoDbCtEtrszUNeQRIC41dzSCFZh+s7zDnpwjkT68n
 8MF2RREc6ALl7TyLzbXBXsDNBZG3yahYtWswYmSEvC3aDAb7nuQDHZeeKuEDjny6hCyQaVhR2AE
 oWpBkfnJrmSiDQZjOhFa/jJb1CSqs+K7xD+xz2Agw4YDGsqkjkMLIv/wUXkwd2rPuio5C/Lr8Gq
 mbvhqvH+dEETfE8FqkKMu0g==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_061306_462745_EC74E602 
X-CRM114-Status: GOOD (  12.18  )
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

This was noticed on RK3588 EVB1 when resuming from system suspend. This
is technically a fix, but its unclear when the bug was introduced and
system suspend is broken on RK3588 for quite a while and not just due
to this problem. So I think this fix can be merged the normal way via
linux-next.

Changes in v2:
- Link to v1: https://patch.msgid.link/20260908-phy-rockchip-inno-usb2-clock-fix-v1-1-f7d59c31b908@collabora.com
- Move suspend exit code from rockchip_usb2phy_power_on into a
  separate patch and reuse it in the clock prepare function;
  move is done in a separate patch
- Updated commit messages with proper rationale
- Added one more patch dropping useless assignment
  of rport->suspended directly after calling
  rockchip_usb2phy_power_on/off
- Add one more patch unifying and simplifying the debug
  messages for phy init/power_on/power_off/exit

---
To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Igor Paunovic <royalnet026@gmail.com>
Cc: kernel@collabora.com
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

---
Sebastian Reichel (4):
      phy: rockchip: inno-usb2: simplify and unify PHY op debug messages
      phy: rockchip: inno-usb2: drop duplicated update of rport->suspended
      phy: rockchip: inno-usb2: move suspend handling into new function
      phy: rockchip: inno-usb2: move suspend handling into clock prepare/unprepare for RK3588/RK3576

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 85 +++++++++++++++++++--------
 1 file changed, 59 insertions(+), 26 deletions(-)
---
base-commit: cee9395acd8043be0644b25c34bfa86623f2b935
change-id: 20260908-phy-rockchip-inno-usb2-clock-fix-edd65b57f884

Best regards,
--  
Sebastian Reichel <sebastian.reichel@collabora.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
