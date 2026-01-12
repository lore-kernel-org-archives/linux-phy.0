Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7377FC9EC92
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pmpQgrtFVrI2KEq8JWC9Lpvs/ohP9BtV5+m1WivL4s=; b=Ul76bkBd1FrF8v
	B1H2NIvGm3m8rum8YLt4Slu2T2Zf9tPz0kk/ZscKc0yh7gqO+3kM+uBw+seZBs6LAFmjDhEzh4Rj8
	10HPVtDLSTcjgOzbow7SGHmW5bfnqpFG0k9DlyH1aOAcv5zeFG2IkU3sK0kmm1fw6DJQs03Bw85ym
	aBKQC2mOkMyeo9qurl+dzo2VBObJ/iBjQViuV7DZxzf92vYQUuMf03uWlriDP9hCSbpkxpqrQNjTq
	7K5aSfLUcfE3kPEBz2/xkaqSDCFQL7U3gCkZ1MAu23fQCs5fOHMKC/xvosKWwKmna1eO9H7AUhJId
	Miqms8Sx75mWG+8iT85w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMI-00000005SiH-0xWh;
	Mon, 12 Jan 2026 13:53:26 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMF-00000005Sg8-3co2
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:53:24 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-64b83949fdaso10580158a12.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 05:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768226002; x=1768830802; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USTvaULg0xk0mT5ybZ9XYBzZEDvEHEKzPaHv4h0K7kk=;
        b=HPOQ6HPm0R+6v8pSihqA4MUgpv/FDU6qWtiAOgKB6O5u0DljNxodYo/P8oaTbuA3+r
         kSkdalYKohz51kx6PoIvJwdmctQ2gorZMSrZAOVOPbSqa2ed0TLTS1cBSP3ntETBMRRJ
         YPQ4Ri21/pkTrumdrwkhYE4lvtTSCSlU6abm6QiRl6aMdTuPYQKKCuPIdhOpvVrhnmo8
         f1KY+MWsZVIi+kvbSBFMOrjSIs6xgHmUDC2KANXbYGDNQoGcmGzdvdc3RP+GuXWMED4h
         YqWV+xR81Mxj52W4Jm1rk7Djc5RZ9CqlQQ/rkSuKvkPGcdGp45AtzWUvUYX55gG8FUw1
         zicg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768226002; x=1768830802;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=USTvaULg0xk0mT5ybZ9XYBzZEDvEHEKzPaHv4h0K7kk=;
        b=nhvcJPkA/Hd0vnjjIZN3m0Jj+4aLOwrkUfdEFrEDNdH3VkuuuXnxLOaFlVjuCvCIn4
         k3yndew/aP4/AC7SffvG2CqHa+rt5IqCz9jmFqgSbmMOvP4FMIP3YIlvflSJLm1TbxsA
         lXu7eSCZVXab/Phrvpgkn7I+J1x3opjzfx4o7JZWOdNiG/HokMiLwZBxI0vVeD0Uvf6C
         3v7IxmIyiNUwXa48KbYOzaoo6v4ZAQGWz21zE6GplZVm/vivMp/liI37lt6meBTGrUNX
         8LO7NzqwJa9du6+6JvaNMZChoIoYbIowuJKHYhsvXAJhA8gJPLfCky0MGLT2a0PLb6Ko
         DwWg==
X-Forwarded-Encrypted: i=1; AJvYcCWs0POzF/jWBGztZKxvLtq8peASMsuM4F1Zf2qapThQhC9BbdKY+dYMBjvJfNB8ikMZfFU0eE50mcc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRxUMK0fHzvBT7FNQICbrM6o3i2VY5o5xKTbiJ0xhD05aAgoKd
	qEcY4ANBy5RFOpXbKcdlqWn7iWSpoo3csl6+Pr1DRf6nh8SpBHrlTeZ5cXVkeGkI6HU=
X-Gm-Gg: AY/fxX7v8L0G/WMh1DTLAcrBiSMB2bVZ1O8pbUczmeL58m5K7zU8qX8hy1cjjAm/tPx
	56YgA9RKWDu99g4VMA8mbelOgOqRuqtAxNptbDfIcSrvcpT2cWM2lh9ZNuIKpGsWP7dOMMXTWb/
	7xRZybMTKKoQvjMXh1y7n3gWyBzsCTHhrsXjWLqJwnkNEnQG2R20ronSNnlpEdDxv7t7OrvjyIE
	m9vB8QCMg5RnLWm51fjgRxTDBMgkvbr71C1HZ+1e/ebMGyRJIIMzuxeKEeuZQHkeu5prB6Jq5+f
	uZ7iVzXG/RteUs860ri/x4AFJVhZz/gSmY//fpPZ+/J8kii5COPmAW55Mumw2W5oM+7WYFbnScm
	D4clZipthqAmMd9S47NsX/i4/a7C7emINC8QdgzKBuR+uPuKsPtiAQIW5sfLLlNciz1B8ImAMnH
	RtVLdJaZgcnQr77PLP3foS6muLxe4EW4u9RDmFm2+AIHQTX9zENATGr1E6n5IcnJoH
X-Google-Smtp-Source: AGHT+IERD9EpUubMa1qZHm1+gsFCHsZnNFyO5sx0pGx/fBWFcfFup5iRk+rNWU7XlYPQpnodXuWztw==
X-Received: by 2002:a17:907:9558:b0:b86:f271:10bb with SMTP id a640c23a62f3a-b86f27111bamr560121466b.24.1768226001819;
        Mon, 12 Jan 2026 05:53:21 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:21 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:19 +0100
Subject: [PATCH v2 6/6] arm64: dts: qcom: milos-fairphone-fp6: Enable UFS
MIME-Version: 1.0
Message-Id: <20260112-milos-ufs-v2-6-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=1099;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=OvJq0jh8QNECDzCdo07ofUb3WVtkm5nfjpkgnAeKfPk=;
 b=h/ju29PagtFfLFrekGbhm7LODk9tgPEQl/Ctp4NfxS8Qk+oz/YilSiZT3fMKpfbZpJ1DfRfuu
 TVU2gzKQrxxA4UPFmjkDU2pdcL4AWg42PCx6hrSqUY/YFTTkQ4ybOPp
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_055323_923389_A6924ABD 
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

Configure and enable the nodes for UFS, so that we can access the
internal storage.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index 3a7f2f2b3a59..7629ceddde2a 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -819,6 +819,24 @@ &uart5 {
 	status = "okay";
 };
 
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 167 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l12b>;
+	vcc-max-microamp = <800000>;
+	vccq-supply = <&vreg_l5f>;
+	vccq-max-microamp = <750000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l2b>;
+	vdda-pll-supply = <&vreg_l4b>;
+
+	status = "okay";
+};
+
 &usb_1 {
 	dr_mode = "otg";
 

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
