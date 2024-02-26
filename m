Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C07C54E41
	for <linux-phy@archiver.kernel.org>; Mon, 26 Feb 2024 23:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0hu+JTvONtqYYLnpVRRrMQIjWq3inuXgWgP/5xs7JQ=; b=vq0W1wkEpJy4H5
	8dWDz/TwMVLJ1MLJ42yRPAjb2sTSHxtbvcN5ITRoXxCFLEUju4bl4qTO7WjG32NmnKxoCvS0Eb0zQ
	+61JtSrtl4oeszJMGFII4+YBqplZgt1fkI6ch+TsbkDQcCxc+FLyDCtF3WXakw5b9cuDj+XTtcUIj
	EwEpNxfspimOv+fs4uQhlV+O1By7I9Jf5FG/0EanMIoEF1JPc67QtX9lVKsOAYmWbkWPJV2PnIqXz
	UHe1Kazysu0fjugJkRcpgOvLslHgwAySNnvdJIthkJF0zYqfshFT3Ecusyi1r8HvuDL+N4RvKQsUA
	iYUSPt95yqPqO9V02mhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekft-000000030Qg-0wKY;
	Mon, 26 Feb 2024 23:46:21 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfK-000000030B0-3Itz;
	Mon, 26 Feb 2024 23:45:48 +0000
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-7c76a566218so178782539f.2;
        Mon, 26 Feb 2024 15:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708991146; x=1709595946; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFej3XRK1im9Jtb1YXeIJeL5LA98qLbzr4AabBMlz7o=;
        b=gdDeBSbbJC4T3AV8MRjbzIkKnyyshuT2SifyPgGI5/kSkdMV+Cvx+6cNTsvLU006E1
         hfzKFeYyWwj5ZlxUkHxLJL4/3BquxZ1YvmhlB8IQ/rU96qYyTNNp6Td0jlx9joowgkaK
         qQX+SEYf3DkBhkwNNLV2DAH6gxhlx04sL8fBfB0+9wWx0DckHl8ZdgmitMeaMVLRPW4K
         YZim4TeIaCWdnsxv8eeBjXa+OvFVxtEGcB91OsHpVZNs5++FAIayXwdyVurutBI7W18z
         1RlKx40IrtKD3vwtBqYbRBk5LIhS2yCsyootDuWr9vCALeR0z/Q/BFwz3FF8OtqYkjPG
         VO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708991146; x=1709595946;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aFej3XRK1im9Jtb1YXeIJeL5LA98qLbzr4AabBMlz7o=;
        b=tSHP/RXyQx5GlLS7D0cOAtUMIW10P+tbQHhZ7fuNpPAcn1nADtSj4N0P/1Ageyo6S3
         8181Yz5RDLnSJZRruuzZrin457l9IZIb22ngn60UXZlvYY8H6RK05830AoxM65YzJTvj
         82RaJDd3ny8YkUmJVZ88BBLj60K63Mtm3CjnmimdDMLtKLr1kPhKuBRh2Z91LQDZ/6TJ
         i3Kqvq8OSy5WIACD6IHhuJbg6TzxmEzaTA0IkHpjxAq2Gd9dBp7rHERxf5uBZ+g0aTdY
         yzjcznERNSxuZcOkGbICNbxoyj33wvu7M0wIQXjcZJl2saYwbj+DF/y6Lpb+n2RXki4b
         o8og==
X-Forwarded-Encrypted: i=1; AJvYcCXVhPmqUO3t3sT6Vn5ihPKAtoz7vfrgD0dUV8cfykbW1FGo3Jgc7yqqOcVVyJa58K/WMOBzq55QWQADVCEPkpEo/G1tFynwhSNeNeesmQ==
X-Gm-Message-State: AOJu0YwjlvMxGTi6h9ovddm4gAfpudExGecFBkPjn+8vStYWEVa/08kw
	fLttu1I5Y55ueVHy0nsrAfpRLAfDMBQ36hxNalsN0t2mlMGrpr9fuW95mR+Ncpl+oA==
X-Google-Smtp-Source: AGHT+IEb//qk46NpdfE5g1O4nEXqBzzNmsQuvytZzFjujQ6auNCCTdAjrykOBRp3+Zzg/p2HzsqIhA==
X-Received: by 2002:a6b:6513:0:b0:7c7:7f22:c0f0 with SMTP id z19-20020a6b6513000000b007c77f22c0f0mr9117706iob.18.1708991145668;
        Mon, 26 Feb 2024 15:45:45 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9c95:d061:819a:2ab2])
        by smtp.gmail.com with ESMTPSA id c25-20020a023319000000b004741cf1e95esm1545317jae.11.2024.02.26.15.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 15:45:45 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Marek Vasut <marex@denx.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH V6 4/6] arm64: dts: imx8mp: add HDMI irqsteer
Date: Mon, 26 Feb 2024 17:45:15 -0600
Message-ID: <20240226234532.80114-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240226234532.80114-1-aford173@gmail.com>
References: <20240226234532.80114-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_154546_876638_ECCEE57D 
X-CRM114-Status: GOOD (  10.19  )
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

From: Lucas Stach <l.stach@pengutronix.de>

The HDMI irqsteer is a secondary interrupt controller within the HDMI
subsystem that maps all HDMI peripheral IRQs into a single upstream
IRQ line.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
V6:  No Change

V5:  Increase size to 4KB to match the ref manual

V2:  Add my (Adam) s-o-b and re-order position under AIPS4
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index c9bcb6641de7..18bfa7d9aa7f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1927,6 +1927,19 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
 						     "hdcp", "hrv";
 				#power-domain-cells = <1>;
 			};
+
+			irqsteer_hdmi: interrupt-controller@32fc2000 {
+				compatible = "fsl,imx-irqsteer";
+				reg = <0x32fc2000 0x1000>;
+				interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				fsl,channel = <1>;
+				fsl,num-irqs = <64>;
+				clocks = <&clk IMX8MP_CLK_HDMI_APB>;
+				clock-names = "ipg";
+				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_IRQSTEER>;
+			};
 		};
 
 		pcie: pcie@33800000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
