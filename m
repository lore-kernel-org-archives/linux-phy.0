Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9440C56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opbEFuCSTf4zTmvSeQ/xx3RJo8t2DBWHBkxXxixQRHw=; b=lfLVXDKX85Ppsc
	nrPdkx5UBW+c4aZ6z2pV3OIVn8cEL97BnBY2t1wRSXX1gY279vpITaVyeDJX+bWBBymIDns0Ntg4r
	okX9EpXFWl+CpABcJWPLibTlpAhc5lBp76Bdzz3jbNUUeRiPZAabLLGEOdyfCCa5NWqSel2lc7Jq+
	X+L+hQzSKTcyEX7yHdiPXK34UwsaH2Vmx1ijyjH37UG3cEMq7bYrhsh6NT2jn03KbmZQgDIEQLB18
	SVy0LmVmYuYnhbuDFsDaE6OibfVmROZv+50oPhpUPTIy7NTxleD/g2b5AIEz/f9LzxDVAWkqaixcw
	oKxiSUiLaAjCMpJrdZzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0ih-00000006BCs-2SgR;
	Thu, 06 Aug 2026 16:13:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0ie-00000006BCR-3YpB
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:13:22 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 676Enee52276925
	for <linux-phy@lists.infradead.org>; Thu, 6 Aug 2026 16:13:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Tx+tU+JavHm
	9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=; b=gB/OLAD8jCO7oDNFB1DvjJBwl7K
	6mwSy9f9tI8GsZeBzOko+RXYNLzeXRHylhpUBjGU/ziir5WXfhkyJfoQM0AqoCXl
	L0cNBsN0u+03ArxdXD00QGiBUjEMKUb5Lzl0bNGwRQJF9Hb5RDC22Y/Buu8yRTJL
	Jg4BUEU78jUwfX6W/pN/MxV+1nlWdKKMtQbeJfizRTQp65lbDOYUhuEZpvhFsEEN
	t1w/v0Lq4P+1z/3h7PrNCDsrpfQNn/EbME8FpdU/mKuxTJF9JerZ62BycFYetUoZ
	uMK8FYGcAooTpMKzNuWMn7YA6fwFV6hLRPjecTQkBhYXBCdvMSBQL+Zc8lg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fvmrjjta5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 16:13:19 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cbb92868263so2584536a12.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 09:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786032799; x=1786637599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Tx+tU+JavHm9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=;
        b=HB5J51+QuSpTGgaIkP+YaOuvY3NB6b7VYCIHlHlZZeBilgxvAgnd8kC+AKsCcYBXYL
         ZImQVkOom3+UElAktnHJPFhXxGwM0yUnhBIpOzzX5SodC87CGyvxLO+1BIZadNkVpD2e
         78K0wfs8Mu9t9XVHN/tdmtp++cSgYBoVQy4EWege1NBgPhEv8HkyZYCgNh7PhqQCAwDL
         WTxlnT86wbhrFzVdw3p6IIYGaYMm1DGnsOoJNkIb5nZ2I9BJTbCJjOOe9osSLimvnBUY
         NzHtzgj4CZ3M+kG98ha2+UZ97jV00Qw+W8mqaBNnPT25T05aOCpGtxi6tZUhVc0Efz+r
         vSwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786032799; x=1786637599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Tx+tU+JavHm9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=;
        b=CVvo9zpePO+TTiXfCBzXSyEAKHB+1Zl8j2YxT4IhLT3BRlGwI3m9gsi0CjUphwRqxF
         3NJb4u+yQ/qUELzzT+bSJr8WPQgDOxhhxOqhM2mAlLI0aG2RzcdY7AkHVDJT+dqf6i3N
         ETsRtCXRSvipgpqd1JcCTYPlHbQ53yzNKxFBBjMihBE3k+2H/Y/p5z4vTv0s01soHjW8
         KmyarKs3npAb2XAfsuA+HTgQRzuqkPs8mkvWO7Juo3vY7lF3A34whscEjamfx/bNujDW
         uo3/tjEZeonYAjPZmLALztFpd0Bfi0XhLn+yIGWdDotVdu0KxnmNQQTkIWkMCaPpQb3Q
         YR1w==
X-Forwarded-Encrypted: i=1; AHgh+RrQtwBclxBhtMoVE0AKlQGICC6Vohrgret9qPXZGvqCybolFarYlG9bhsbK/6fv2wZ/OPjYahdfpE0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyW7khLYn5HBkhu5XzOH7TBj70DqJzWD+gGk0Gh14nFLP5Bu2CY
	eTvl/77pMsWiG/wqvLCMNYETRsmwjrL6OJ1Ab+lXvJ3Fg9fjKaa9s0thtDCC5X3J2XEJZPORREd
	AeMWq6NOVB5HU/jNdbm1DV1BMhbO6kZuXpe9FPSvjqutgM26rTp9be98Z7OmC1ozwmaOS
X-Gm-Gg: AR+sD113OiMzhRlBZZsYe/30ZHNfw+kGf5+T4Dq1brMmHGg0uzKYr86eK2xMqtx934s
	ZQy6MCUL+6BbWwwgu4MEOPozRtGEjnGCUNc0I/X0pZM8J45z6+/+4BI9561tCgrY0pryUG/RmrZ
	l9d46TOGN/laNT5caH8nAEqtFppjgmok6rvmn4ocKVbdfLrIp2w2lEeLAx2EbvOuKULJHW9cC7B
	iCgYhNMbIh4MKQ9fsS6kq/d7CEJCcHnBaOgLk5TI+K35ENo5qZmAySW9dRvuk3UY7ZqHyhDUmsd
	OUcsT6N2BJg7IVqkkNovIMRv1BeQDKRV/4C71Zi/TuQu8T+ij8GrDgZIwo3pAEqg15ByIsRSXBi
	kDzjgI0DqZANSEZBLLhxj9KAmJaFlOM/l
X-Received: by 2002:a05:6a20:72a4:b0:3bf:9142:ba3a with SMTP id adf61e73a8af0-3cb85ef7460mr18750414637.26.1786032798813;
        Thu, 06 Aug 2026 09:13:18 -0700 (PDT)
X-Received: by 2002:a05:6a20:72a4:b0:3bf:9142:ba3a with SMTP id adf61e73a8af0-3cb85ef7460mr18750338637.26.1786032798360;
        Thu, 06 Aug 2026 09:13:18 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-315863b761asm43074546eec.1.2026.08.06.09.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 09:13:17 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Palash Kambar <palash.kambar@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v6 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
Date: Thu,  6 Aug 2026 21:43:00 +0530
Message-Id: <20260806161301.1010876-2-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260806161301.1010876-1-palash.kambar@oss.qualcomm.com>
References: <20260806161301.1010876-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=VNPtWdPX c=1 sm=1 tr=0 ts=6a74b29f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=MMZtLZuhhDi3SW52_uAA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: xYGTXQFMzyO1tlgh_cG0wn6yFUENUDBo
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA2MDEyNiBTYWx0ZWRfX+Wl0w8GhlrGP
 854j5w4EKr9p5asqCti2309RTWKKOazcNIs+u4EHDto3Cn8hJUem2y0AxN5T4NK2nXWy3v2FOWS
 ut49eBA7F4a4VHsrc85XG7PjSQK1e1k=
X-Proofpoint-GUID: xYGTXQFMzyO1tlgh_cG0wn6yFUENUDBo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA2MDEyNiBTYWx0ZWRfX+jxoyVUDkhDs
 GXsOnsMTECCUAgSCMBY3yzpUncTfBzW9zezIHwrQYDECB6+/fsmq2LIlDZmYaPeo3r1AAs52IRs
 ybf8I8EUGyhkcFivlBdJjApU1DtuTGfUglIsIA8zSdfiASvwuW71v8EoWQQqCH9gJUjF7Z4TQ0u
 hX7FTloGjy5Q9cuSgLdk04b4l5bPbuwFrGVI09oLI1jzycvkHQVkj5++mTPorfZHJZwScUE6stM
 EohKCOzqOBcKe073v0euy2KJXOnqI3NjvFTnwgSNSBjCypLnCkqSQPFv6bN/wtQKWjhE94431q9
 iUDnSMT+1D4mvpo5CE/uFg3XB4KT9rkW4EJdpNyT8MBjmtOhSn+TIepA947j8EBWD6KKItf+weo
 Q/ND97+OhmYOQlWUHC3KWm+utqK1iM+MBrqmk04C2liN6SMNlz3AIAi6g6y+hbBdvGB0lnUhhrJ
 jDvaH54TH3Im/DlKiLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-06_01,2026-08-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608060126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_091321_025211_4165E4E9 
X-CRM114-Status: UNSURE (   9.61  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

Document QMP UFS PHY compatible for Hawi SoC.

Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index b2c5c9a375a3..4efe40c0dc97 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -38,6 +38,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,hawi-qmp-ufs-phy
           - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
@@ -108,6 +109,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,hawi-qmp-ufs-phy
               - qcom,milos-qmp-ufs-phy
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
