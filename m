Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F3C606A32D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 07:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3zmVmbQv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=We1h7zUF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NTeFZAuCJ5g1WNA7Ib6q0KFKtcTWx1whBUv/JoQWMEA=; b=3zmVmbQviajtmP4nnbHTrAT7UV
	KR8m4L7mJVLMc3wDlSZx4HYgrseA94kWkJZF8CXcbkcHJyOXviI+s/h1qGk9e7DMc/vyE4S9qfzWw
	nd3wyzo1FkiaIfIH2UWvErSNPgTyZuqNWtrRmlS9+vAG/IsTmICyqCe33LX9zUvT9Jc5Zx0biuTX+
	3IjxevQuht++u9pb6MZoQnxtZvZNYQklCQzAGslA6WAJX+Z+IB0ty7oX67ktorwoTDvIe2LGxwqF7
	BJXyt7VLano8ProvFSihEMOSJDRzv/TkDx2e0G5nhecK2M/ZpdCQ8dycw4rYHFgRv8AqAHGf+14Rg
	kZx3MIdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgY-0000000FBZA-0LvE;
	Fri, 27 Nov 2026 07:47:58 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgT-0000000FBU5-3r0r
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 07:47:56 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-386d822a548so249116eec.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 23:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765673; x=1796370473; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MOB3aNMg6zK5EGl8etrn5gy8OwqRUvQQTVeOILv9hbo=;
        b=We1h7zUFlcWxaUuVaSSyQGMY+EtNrKfvr05JX5qRyhbYUYr6d1WUhGrG/LgDYNThMC
         Gt3Usb4mMvkl9QPfnR8DEA74KR/J6UXlRhnif5SfbmwSXzQpPqw98FdG9OB6+y8y+Fgo
         Sl2PPE0JccaxjVizV9wh+Rf1QX4DEOdUrd6YHegcxboo/zNapws/kdif0FLiDW92u5EL
         0nOChEKl7maYYC9SjJHH34505fAIjmYR8VOee93dM0se6kHwNiORGHza8/Nba8O7mIRW
         PqHsYYTylvN6g4FIyQIg/FU0hjJFkbWDEH3bq3nfVWji+c/TwJN/jxhxjmML1DUEW3/V
         WyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765673; x=1796370473;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MOB3aNMg6zK5EGl8etrn5gy8OwqRUvQQTVeOILv9hbo=;
        b=lJGpu6SNHChCzJ6b5NMTcD2mphdPPqURel1azqgmqvBGdWQZBKcxeGaRf2oMSa4HIi
         UDPKSLL8qTLuB5F4pL+15mw5K9CwmhnGQPtYhPvgwjWAPLjeJCIpMGxo/JgZGt0D4kz/
         3skZme82hkxfhpMahUrlYEWIgW3VGLT0eOPJNhy+wZY8eQvr87M96LemXscIEihMeVZB
         IR0DiLG7hvJ0XV0f51Li8bqbY/usGzzs7VkASMo99jnhDKfSaK9h7Ml3ueLJY6a3GQ6I
         ufgbPvrerDIw9p42AGTyvfNPOqsO0CevRiyVZACITp5ewDsDfBfFJhL7axl+Ah5Qpum1
         5wrQ==
X-Forwarded-Encrypted: i=1; AL+hErHgneiW4hlRvFXQHf4tvjCPQAz7jZXXEoAncassE+97eRd2N4FbiQfnIlnBskIFejnHTeE0X1FfWdw=@lists.infradead.org
X-Gm-Message-State: APuU4Z9rWPkexfusiKfoyOFTA//lBt8ouHa8lfQq4uurQko5a16RbLja
	RhloEiFCmlrP+gdWSCl4YVrnZpf128w1k8so6P/VE16Gc+h/ovG25CRN
X-Gm-Gg: AZFdTZfZso7xfvgYieyu5MJfz7RxqPz7+v5gY548OsSL2l7B/lPUY6UDOciHZmjoct2
	nuezsJqkKIKLoVIj6wyb3p7mGIOd9/aPMXk0Z9oa1VrKIrRQGtbsCr71fXOicG4R036W3PDFYUm
	dAj1KUBF5UmNAKRE3nJvDM3VN/hMB1cDWt5fDje9sF94raU6I0oxXns0ZgMv35Q4Nt7g9j4ocvy
	SoSHPha4IHQCuK8LVgpAJPBqWrNjhaDwdSrowDOh4EsD9oH3nJsrta0Jryrs6yj1+KNROSLonr4
	cetHLJ/3K+Agp89ROwYsqxkhSPSY2uWIOtG7SNMk7p3nUTu7ndzvBswWAGR3wJRpfvdkEvFPO+U
	cI9jqBtMhxif9CSGRd89Tyo+A3AtivjlNQs2x8HH7/GHly4ejTMmeYshhnghSOM1a51M69GYSeM
	UGcKWhtm2Kk/uLBm7CbVMkUR3rkO3HROVfoOlhJg5tyyBIMU9NCbd+Ok4DvVjwhodx7JLfMmoVI
	A1Iu4EIXo8N2wbyFHV3ple29MPeYySdAQ75iW0Al+ZKD252ZsqOQ9EEVKIPJWOeCZWysb3BvPQZ
	vsKWQgmP21s67Ri5Q4VeNb5c0HYKmHXNuhMBx1JA/7bwqYW0OgutEx4EOBz2snLJYzSnVmZjpQc
	TGY+neU+1XDK60EmRfHrW
X-Received: by 2002:a05:7301:6187:10b0:386:a8e0:ac22 with SMTP id 5a478bee46e88-386a8e0b29dmr26742968eec.0.1795765672594;
        Thu, 26 Nov 2026 23:47:52 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:47:52 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 15:47:37 +0800
Subject: [PATCH v8 1/9] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-dcphy-rx-v1-v8-1-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
In-Reply-To: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=1350;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=aNt6jFbb1EluDVRLQW8cmmY5lEvfVnKHFjZpwctNRG4=;
 b=/TCcZP1Jwtxcsr499CMyqjBIfHlVD6fhzK+HXpcYMhrJ+L+QrrJw9QVYTVXvoidwRkIabtG5d
 mEbIDCqjHhqBq+hZHZviYPfidoQJ5XIYOzDrekMItz0qTcSXOyruzbw
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234754_000635_AF9BF95F 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

A MIPI D-PHY or C-PHY can be a transmitter or a receiver. Some PHY
blocks have one of each and can use them at the same time, so one PHY
node offers two PHYs. The existing cell, PHY_TYPE_DPHY or
PHY_TYPE_CPHY, selects the mode of the whole block, not one of the two
PHYs.

Add PHY_DIRECTION_TX and PHY_DIRECTION_RX for a cell that selects the
transmitter or the receiver. The first user is the Rockchip RK3588 MIPI
DC-PHY, where the transmitter serves a DSI host and the receiver a CSI-2
host.

Suggested-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.kernel.org/r/7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com
Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
---
 include/dt-bindings/phy/phy.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..9ead74d9a172 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -29,4 +29,7 @@
 #define PHY_POL_INVERT		1
 #define PHY_POL_AUTO		2
 
+#define PHY_DIRECTION_TX	0
+#define PHY_DIRECTION_RX	1
+
 #endif /* _DT_BINDINGS_PHY */

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
