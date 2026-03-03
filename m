Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A50EDEBF5
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 23:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OzsrRSbAdd+gCT+0+Vyiqu3RbKuNpnzPsk/4SAsNgo=; b=X5w4K9ppQ2qfas
	8M+dYQA7bXL+oEBSQJigDcchBz1qijpIDt8eJvVOCfXVnMVRvAaSyxhwsj7K6pktB/qiwMTBR/WsI
	4+kKuO4yBj0R/ZHl/eHZmgz0xtKdmxVaSQfCDZhLtTpfRAJOQgQo8WApEvlfpzbTTk/Oz5lZ5pRSh
	8XrClyNZ/JN1irFLlGCw69iGOGRXZuq+XryvjP06/sZ3n5hxKu/MEvkAXPx+FOX5jEroc5I/7Qllz
	BLdptAXwyy5Gi7vCuysL/akgM6ekTcVJ1swnljQ05OUqxFu78/bBEKmxeQGWC8M7sUT83ksK8YMtj
	qUeg1fbOp0lVLXKBP/2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZ8T-0000000G5X1-22dc;
	Tue, 03 Mar 2026 23:26:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZ8S-0000000G5Wq-2i6a
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 23:26:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5AC9A600AD;
	Tue,  3 Mar 2026 23:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D3BAC19422;
	Tue,  3 Mar 2026 23:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772580399;
	bh=nFeGYlARoMmzZtAGsU/X82xVpzi4kLYOlHaX8giYd9E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n74hPDPBnyDxll6kkWMhhUWFfbWcwH/8WRXLFMaUYgecR4gZlQ+dQw2VHF2ZhjNAa
	 E9jLyiAa+ZjrDsvfh6sWHr4wyIfhVeKZ1zGPDiHa2FpJ4svToAB2X/fWKPhxgR3Nhq
	 Uedh+3NceAhz4ZZrYetl8IyG86Utio2s2PVc74N1TE/hqLkj53OKVz6hQF2BJn2ZeF
	 49JvQOQCig0vJCeroodg9zmBnAc+rJVHCWFcoRWH1nO44vwImg5Pjh+dlWx8/HdJsP
	 q0iKLAyAPld7Rl2zhZCYRGyOJkZd/oI3sdZXGePQub3DM9MpLJWtL0YgFWMuzxnsI7
	 GtsdiH/Gt5BsA==
Message-ID: <dde5f82a-9ff5-4f7c-9ef9-470aad17c9d0@kernel.org>
Date: Tue, 3 Mar 2026 23:26:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <4pFL6wOeTKUt-Zq4YbjqJdacMgUIPSYJD-4-5DcIMEZ1sM7JsNFYcSv1bd7ZRVOklTsmkEfxM2b6tTflmiECNQ==@protonmail.internalid>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <03b44922-72d5-465b-96e1-97a19655e97d@kernel.org>
 <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
 <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
 <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
 <bfTUflirC2qzMSllq_4qHGr3GL6TJ088yNF4lCBtjCoc1sXqz0KcfYyWuQv6TeRtP6GdpqllNp4ipl4Qax4xwQ==@protonmail.internalid>
 <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 03/03/2026 23:17, Vijay Kumar Tumati wrote:
> Sorry, I do not know about videocc.

I think Iris does those itself see:

                 iris: video-codec@aa00000 {
                         compatible = "qcom,x1e80100-iris", 
"qcom,sm8550-iris";

                         reg = <0 0x0aa00000 0 0xf0000>;
                         interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;

                         power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
                                         <&videocc VIDEO_CC_MVS0_GDSC>,
                                         <&rpmhpd RPMHPD_MXC>,
                                         <&rpmhpd RPMHPD_MMCX>;
                         power-domain-names = "venus",
                                              "vcodec0",
                                              "mxc",
                                              "mmcx";

Still not getting an especially clear picture on what _levels_ you are 
proposing here for MXA - here are the three opps we have for the PHY.

Sorry I don't get how turbo is coming into this ..

+    csiphy_opp_table: opp-table-csiphy {
+        compatible = "operating-points-v2";
+
+        opp-300000000 {
+            opp-hz = /bits/ 64 <300000000>;
+            required-opps = <&rpmhpd_opp_low_svs_d1>;
+        };
+
+        opp-400000000 {
+            opp-hz = /bits/ 64 <400000000>;
+            required-opps = <&rpmhpd_opp_low_svs>;
+        };
+
+        opp-480000000 {
+            opp-hz = /bits/ 64 <480000000>;
+            required-opps = <&rpmhpd_opp_low_svs>;
+        };
+    };

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
