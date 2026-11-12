Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8FD606A8B9
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 15:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lQPlyuOu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=KiPup8h9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=EsY3E7YI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0XpYqdVPSG1Cpt1Y0vifD8sU4Nz7P8lKnJVtAq4efjg=; b=lQPlyuOuUY/lnm9TBwe5LDHGAQ
	qCgV+MDpwK8BtLity9AjtWKVIfpjcfpONvFcyPa28Ykak5pc0mrVURdONyFTwmoNunyk0ATBR2gHd
	iCOGJyeTPmu+/QKt3tsFHM7bzqqzvyswsOpG+Jbf5JrMGFp2v/4KHEHVYv3AYbYw/zRYWmezjk2rY
	cfYByEVmqIGirS4hesvVFAu+eRW0tV6TAY1C+n4J9XjG1wgguUvedoinCKxrGQfzxrh+eAO23X7aW
	IoMbzcqW1WEGRHbN78M4NiFvYy3/pZ45eP1CRbOhK1y1or8D4P/E7geFYxK10T2LJLu7i1hMNgzLU
	qwmGrCKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWr9-0000000ATvx-3K0U;
	Thu, 12 Nov 2026 15:36:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWr2-0000000ATst-0baN
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 15:36:54 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ACFZOf62593688
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 15:36:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8AlHHOOcH0J8Yer1oRtneotbq3Wdv4IOMjaRc3msIJc=; b=KiPup8h9fQVaDAtA
	+jJUw9V6fkLSzoBZJPK3oKE2P7AU5W67keThP0fq8zKk+xRIVJNae1BR5KWpeJ/l
	pssM8Ki8s8fr2MPU6u1bwb1aRPSNkNNOKNxJqGFgJ+m4Mod+087tnQocy8paaDQI
	/C3IIJGx7uOME0cmzCMAEI+BLVI6wVq7VyOjMNhSu+3OYpqph6AeeH3a8EKbcqRE
	3fBCifC8Mu6B3FyVc7r/xUgUhttdx/erP0gcQC5KDuCUlPojH5W6dgA/WbTs0GhE
	Vw3ngYT3aChUuUxWfWi5nlJRlW092kzZ8f7SGKhnccDMuymUMJ/2muE/nb9Hnq8e
	YJGZKQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwbx311kn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 15:36:47 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7d2c415bb8fso829355137.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 07:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794497806; x=1795102606; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8AlHHOOcH0J8Yer1oRtneotbq3Wdv4IOMjaRc3msIJc=;
        b=EsY3E7YIJqQ3149gwwNAVezk0qXoAdhFLDrNxiVrFLiYcPlYW73beZT4YIx/K0WXlT
         mGX0nvVBgnrf9q25u1YX1WVsDkBrCS0cKgjQFz0RADpCm3/PvD1IIIS7XokOj4OTDJF5
         38eecL2RtJyDvxPOw7wnPpCpz0nHUiofulYmu4Dsy2bpBj4gyJHKC0eiPkHzVx4yy3MO
         jqKbjtiHnxR90Z0xOtFNRRjV4Bte1HcuUQgO3xzKopKc7lwu1NUy1IKJUbwigDbKlslO
         3Fa5rkg1yn5rO1yV03taBQ6hg++tS5ZbyiqnKff09GCGsOoXMOHGSMndIOwqEiSLeEzB
         xGQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794497806; x=1795102606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8AlHHOOcH0J8Yer1oRtneotbq3Wdv4IOMjaRc3msIJc=;
        b=22PM9OU+DPEZXl0naxSSwqzRhr3N5Ms7M3UbvCWxOlOla8bv/7DIVsUAAefnG78UDI
         bhQFwTGhU9dMS9uNv3UFRMXvErZvCEgq8Ayp+fLE4q8w2l9KYkbYw4xYD0Q0qZFhHQr2
         71vtri5aAmLzA3GQrHL/uYIxq/mUzPrv8zJVmNnBPoBh0wN8lG97bNouJjvUusFuGMUI
         hjlIN3rVA2xP2AdoBXJVwVIxNSKMSWputdj3nPFZCbJCJBeKCFrcon+6fklTG3AYb+oX
         b9QmOYmUVU7bB3KpAS+yz+pN7hqYYv+WVysIqyKfeTfG/Vhw/EH+lCO4b3/RulAE5XjF
         C7rw==
X-Forwarded-Encrypted: i=1; AL+hErGBbKdYon8IWcRbP6+9HZLeB98tLffO8d+zNi6wSdEUMxnE6S04/iH8znjYszZPFDkwDt+6KM8mdc0=@lists.infradead.org
X-Gm-Message-State: APuU4Z/lCAFLE2iXqxbcTL7/lwlTv/74oFYHf0Fa6DVLZ9rRjCXsY4ij
	t7VpcjUbTIlWJt8hA3TkukmAcLLIBJ1jOqTk37zob7+H91XvfH1M15IEJ4GM4BsRdwHfyLSZoAZ
	bbRLkxYpeSnjswHhgafgyRs/5Mcl1Lri+VhcrsnyjGYa9fFkZUEkpIMBX45qeoCQ+rb0F
X-Gm-Gg: AYBFou3+8kuz4Fjo1fw/RHPHeRpa42Uhe/unZTLUBH9buUO5ELYFqRo9goN/QgA6gkE
	C7peMmYpMyumvhnKLb5GolH915cu27L1SglaKvVr8WXXxEmX2BYtW60bU/bUrVxB91UN1CCKACK
	BmbWEUUGEjtlludwL7eW0Y/TkEFtO8aW1epyZJ5LdFoQ3M1AKuKaL4BIXWfITz3Jpi35HGf7PLm
	VxEbDAcxmhZgyEFBP262r17fz7+btvbPMzyNoA5Erf4KTQ44RJSBpp5GxoW8fNJiz1ZGQf0O9ev
	+UYsaPX5b2cZBxocr4vQzMrn6kDZbCfKxLAYT50KAaW9kNhvT37MOmrmWhiW391zQO59hoFNoZK
	tr1guj7nIW8jS34OK6rwAfXvJfGDpVl5i6bK+d0cCY5BzkVZKBSd6xu7E9ZfQGUm04BMXO7XyaF
	/wWg==
X-Received: by 2002:a05:6102:6a83:b0:7d2:76af:fcce with SMTP id ada2fe7eead31-7d4fb2db138mr2027735137.9.1794497806338;
        Thu, 12 Nov 2026 07:36:46 -0800 (PST)
X-Received: by 2002:a05:6102:6a83:b0:7d2:76af:fcce with SMTP id ada2fe7eead31-7d4fb2db138mr2027721137.9.1794497805797;
        Thu, 12 Nov 2026 07:36:45 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ba09536ebfsm138353235e9.5.2026.11.12.07.36.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 07:36:44 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 16:36:38 +0100
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add the cfg_ahb clock for Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-qcom-nord-ahb2phy-clk-v2-1-30ad3d947217@oss.qualcomm.com>
References: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
In-Reply-To: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1878;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=MYxtwx6oSY9pEafESek3VC8deiLRo9hu3VKNcZ8z/D0=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq9d0ITiVdJuWn1AJ9v/nPh87x/keI0+PcHah/O
 fojoOmerCeJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCavXdCAAKCRAFnS7L/zaE
 w6izEACOL6wZcrWuKa8sIiIvcUG4OZNoEmYMS3cuGhOz7NFCzHWfQmE1ffjCEgwuZisRDIDbPIO
 nJDxiQEMJD2Args6Yxnui7TvXnyLZFRohlJt9m7oThnEeN18z6Yjh5YCHEDZ51H7y1Pg0+qhn7Y
 L2gSXyxVa9upebQxhHMwwcMejRWn49GZeL9JJQHjYILS08sA/wXEz+qFeDEQeZonC9w7nto8Pm8
 +AVtUckE8ibCSlIQ/crS9js+BiYUdGQn24EAW5maYL+FCtZ2szziovQNgovKhPktmkHmQ446Zje
 BoInuuZiFx/mdP5okOnNvnZoipCahdtsZQX3GTIXF3AkS+gUwz3C1oyg/Q9J2KToecfvUaW2lq1
 hOC2wK3CyCi3XM5lp0YlGQx9D7Q7LtGhHA0eDhYrNNpTlD89TlUP6Zm3JLlizkpAEY/SwJZ4pYJ
 J9/q14S5VXhh5dRI+qL8R3JIL1hPFH9bC1EWC95j3+Soegef5HPzw2XWN0AjavtmzvRE0rfCsZZ
 HDzlU6WvuL6JKiuLsNWRwFNRH2YLKU0rZBbDaxITEVo7McDtecBTk3gnmH9nyumQ7IE8AstmKpa
 Tz4NSS3H6RkYeebVKpMdS69rVfjUj3gpDViT59ZuwjoyCBGJSKTBQ8BNleeJd2j4C5z69vbJjkJ
 C51L7TkrTlty+Rw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=S+5MU4sP c=1 sm=1 tr=0 ts=6af5dd0f cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=2jpwp6DS_NLBz8rowOEA:9 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDA2MiBTYWx0ZWRfXyzmfvdBS+xZx
 Gs1rwVhr8vNCJ8CpRJyPPqncjxjjJ3++DY+Q2ovHrxu36Mr+v2ZC6f+LmUFuRFVGxCabJKRjQ8l
 zKfjk7ZLTeqW0I6ACvsbBtSL/wCLbEX/sPTkEcM058Wbwu8kxUjdLUinWoTHwB+AH6rnBquMOMa
 y/NKacnShpEJumdJ8HZ1r9690vd7lvUEgRG6r6X7/+9+tdrx2M1l2kZYfjVVa1wHggErfSJQ1YN
 6FXEcrkF3cpeqH+Rd+YV8UTT7mpxV6JLoIwTyCOKHBr1vrGeQUAlp6GuP8a0rWcBKkwWNjohBim
 +MKDEwSwih+mJkV1UPd9Sqaqo4USG4+L84sPBtlXyCkPJosnNq9eGWYZ7WAVryvGX1a0SIFusZj
 qLuI4b/IJjh2iyOI9YAFO2Ar6adxEWGrfmQyYmYydw4Y4Rcn0FrMGzqmgSw5N0e2dP6Z4nY/rgg
 z6bw2xfdRT0R6CbGv5w==
X-Proofpoint-ORIG-GUID: BiGiIN1dTrEpm4tZzys-dnSHlA1ejcxw
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDA2MiBTYWx0ZWRfX77pk91lELEu1
 RVUuOoChBcQ0N0LN62e3KT265DtG/J5wASB6rhhOwHIGhTZc39Fi7AsbTLiikRbnJf9sfl9CjPR
 U7AE4oHAJFVCha2SZr7wtsy/T8W0kQI=
X-Proofpoint-GUID: BiGiIN1dTrEpm4tZzys-dnSHlA1ejcxw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0
 adultscore=0 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611120062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_073651_959013_AF29ED39 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Shawn Guo <shengchao.guo@oss.qualcomm.com>

On Nord, the USB3-DP PHY registers are reached through the AHB2PHY_0
bridge, which is gated by NE_GCC_AHB2PHY_CLK. Describe the bridge clock
as a fifth "cfg_ahb" clock for Nord, using the same clock list as SC7180
and SDM845.

While at it: make the constraints stricter than the global settings: set
minItems to 5 as all three architectures require the cfg_ahb clock.

Fixes: 674e602140a1 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document the Nord QMP PHY")
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
[Bartosz: fix constraints]
Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 13e64fe510b8f..8d09e6937fef0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -209,11 +209,13 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,nord-qmp-usb3-dp-phy
               - qcom,sc7180-qmp-usb3-dp-phy
               - qcom,sdm845-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
+          minItems: 5
           maxItems: 5
         clock-names:
           items:
@@ -229,6 +231,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,nord-qmp-usb3-dp-phy
                 - qcom,x1e80100-qmp-usb3-dp-phy
                 - qcom,sc7180-qmp-usb3-dp-phy
                 - qcom,sdm845-qmp-usb3-dp-phy

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
