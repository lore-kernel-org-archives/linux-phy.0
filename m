Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5E40CD98DA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 09:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opbEFuCSTf4zTmvSeQ/xx3RJo8t2DBWHBkxXxixQRHw=; b=XxOVa5pulCeRxW
	4zLbBZRtyr//WUOUHLn/VIMFvPv0mzXgNjPoXac+ZkHejG3v/HdRtfwF+9CCUxn17oPJaaGKIn+ul
	c/JJ9ugWrjvMRaL0COjGfbeHJNnr3l1PuuwBLAMWaq1GarUCwZleYix/bn+59fVPD5hMCLgGfQee8
	BtnzYwpJ5095iNsig6o5M9zE81+jRVgKRVgcO92W3ncCTBNw5aMtnniM4yDlwxWk7WDmyn81cT+ey
	oUzr0zaym55Mey7mls9zrjQFsz6xj5hNY3PX29JkTLBpDxg7c60A0EXnUOZxjDs63LpZd3li/drRI
	RRQo9UIV6lrUM0CFUcuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3NT-0000000DxBZ-1sVb;
	Mon, 15 Jun 2026 09:13:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3NP-0000000DxAF-2BOa
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 09:13:06 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65F6K9qA3692490
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 09:13:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Tx+tU+JavHm
	9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=; b=cEI5Z90v7sQGWvONHb8jO52m6wC
	fmgZoRLcJOYeNR4JlBUnoH1tAl9QUjvCJ7mfFmMSv5Nx5oFAyVvQzf3+OxJaQFOB
	+ppN3Ym9Jw3I2rfHBKVSX0fdojvi+nP4wqQDejwiqO94BEalzIaoPj/FkXWZJcYR
	8aiyBmCzQlrHOOZ0X/RxHz9JWGGoqFnMyXdxoj4XbYWEX3jjZYMUw7Ib7heFaJlO
	c52ERPg5lDqV9D4syM2fHYWM2xWz6+OI+XLVaDJL6mkAq4wZXGm3vc2cny5/kD/n
	DBT6XMGO7vP5dyJA6FpRQ9uKKe7Rpybx0npYWb5aM1AShiFNkGpSxdoUhSQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eryk6ehht-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 09:13:02 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2c0c20f7581so32481425ad.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 02:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781514781; x=1782119581; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tx+tU+JavHm9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=;
        b=d4eMLTFOKQaZX/GgTh+3YunInvC+dHXGUHmZ2Ef+Fw9xsdZuilDYNwcEKRMACfCSMo
         yiytK4tNb2v0irN43f4MW9+bbjeu0l82Eu0/1n7cGd5lmwFR/tXiAhu1Ai6fTIYzD16E
         kkm4pcdefPE6Fo3YRDbHvtlyA3VlcwBbAfOSaPOKvEkaq2RylRCPLZisldzIzdELRw9B
         pmorVmPZ3yp2FAnv94jyzVbx5y8SbHLyQR53Jg0QwnWRuaKW/3Bt1Fj60t539FLDBsvz
         DycOgW/iGQgIlFfGdJWvGUG9AtHQWDRctebTVP0g3uVlzQ/d/sD0B0grCTccuceACJBz
         APZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781514781; x=1782119581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tx+tU+JavHm9jlJKkOPRaMWM/yiGuddWBQeSbrpsom8=;
        b=k6I6D+w/jtm2fpYjujJ3N4G+hABsX18oDY7cUHiWynW0jfZBaaOcE3HWTITXy2+bgS
         Y2hg2rtPZ+Jzido58F2CkGTN9LCNT1EzsfKSUkI/PMdci4/lwiTNRDDZzhgQT5rK6T5L
         bp0aL2rtZJeO228skuo4Xga7QQBbMOq47yvNH6LD6ZYwxXiEy09n2DT1xf2bpb/95u/Y
         7xZBcPql/+G+Y3lwncR+qLi3MrK7VxF9rJwe9qlGf9DszXSBEVNjChuvYSgkg8SQAcTu
         3D3H8NZjfVCtmBzmkUXHEoyOcLtodWvskTA6Cg3dDDBJQ1hV+DqCupFKDEqbNNtC5o1+
         uVqw==
X-Forwarded-Encrypted: i=1; AFNElJ/vyazAL+WwVKZQjEKJofmaMdR2qYUdULS+3W+Lm0HHITiZYmwbf2hEpjiCldn86BR2BnHfyPO3TBU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpXkouDPqtfXfqjukac0URwSivsvdg+L2cRzFfX18ASTbkXJrl
	7XrJ9O75L1YRbuZsAAgVoJ/GjjWKfsu1mb1jyLnbPMWnoadKYBRFhzQcPxW6jdcRqTbYi8+by1U
	TtOMN7XDacZ/+Nfl2+UuZ9D8ZOpQJBYITZdpQopcGfKS1yk+Le4fitvW3PdcyCHbUNkaz
X-Gm-Gg: Acq92OEJ1qfJVBfYfNjT2m6tJZLzE5Cd5eEus+euM/vfdfkF3O0aGLqfOabXtLU5fTV
	USvMNWkHN6oisB1t4x7ldtWOcmBzLXUvw4Wa4WcXy8g7m7K3yMFiuC2P5MY7LmUlmvg3jr2oQGq
	/E786sO5YDlCjB3uzcs5RnkWyGEuJeU9WHcsA8K4Cjm+tDp39w2c4H15d7xMG7Ic7GmRu54EbIO
	jFiuBc9V0H9luZOigB9UERHM03RcGyEdZahlLcCV9OWAL1t/A9Qgzq3Jqs5g+3IoQ/3jXxYZK3b
	E0MgrQlG8dy5eOoGKREdcoD2focCZWZWs+K+o2c+FrwALOoDjKIi2gRvNCNy3hb7f/dMg3NGlIV
	ZcHO5jo9yNsnwhD0EEadtrSJIf2To2c6PVmgg/3wpXO905M12SdijWQ==
X-Received: by 2002:a17:902:c941:b0:2c2:78c4:b74e with SMTP id d9443c01a7336-2c411d79d0cmr150200365ad.27.1781514781366;
        Mon, 15 Jun 2026 02:13:01 -0700 (PDT)
X-Received: by 2002:a17:902:c941:b0:2c2:78c4:b74e with SMTP id d9443c01a7336-2c411d79d0cmr150200005ad.27.1781514780889;
        Mon, 15 Jun 2026 02:13:00 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c433079999sm91669065ad.66.2026.06.15.02.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 02:13:00 -0700 (PDT)
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
Subject: [PATCH v4 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
Date: Mon, 15 Jun 2026 14:42:41 +0530
Message-Id: <20260615091242.1617492-2-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260615091242.1617492-1-palash.kambar@oss.qualcomm.com>
References: <20260615091242.1617492-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE1MDA5NiBTYWx0ZWRfX2HyTHyyI1u3l
 vvqerYIobokStHkiJNRnqrQX7L2hko6D5cBT9yrHyBPuHgIwavnztVb5Icro5NjShaBjS3nSWdq
 ecirYWcQxJCCF7lnN0D22PFnIMX/o80=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE1MDA5NiBTYWx0ZWRfX9/wVbdBZiHtM
 rkyVKsOOAW3f8CHHmvNGJ/muCpj6gfbAZ43WC4WdxxOlVk6j28Zzt3HLeYQUOtLfqS4efhcTFQc
 hYPf4EenrIwN6n90nLEXexCxU1CJ/jt4LZFCjM7+rePFA/sl1phyO2Ds2GtBzFavc7qRXvZUn1u
 9r9zsywo9piZY8Gu9c/xKEfs7+nhXjOeQnucrWayymhqTkg+WAT157NmKZnRcQ9Ze580eATSLLl
 es86isa7vCJBkDN9HDHPfp6FJppPW/GX/DQNA0F4mJina/eRXinlxTJ/2szwcDNLSm4Pd+AJFFs
 +/qRvOff+d9sIU3qJP/C7krqjorqzeE/aoK2YQPuqtN7MWRZjInR2qKxJLSOvfcsWNe4RcEwMXG
 2jO4pAaUM3EdGb9+Hv/z8yUPv23gsdbP1SmPuezAKAlaN48webOquLOwN0ufT9x5loIEQR9btAz
 eD8kN8Tq8NyxxGk8cxQ==
X-Authority-Analysis: v=2.4 cv=NrThtcdJ c=1 sm=1 tr=0 ts=6a2fc21e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=MMZtLZuhhDi3SW52_uAA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: ZvVFJtYmD1p1ZLIJlVx9D9-AaM6RSmgG
X-Proofpoint-ORIG-GUID: ZvVFJtYmD1p1ZLIJlVx9D9-AaM6RSmgG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-15_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606150096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_021303_674570_D13CEDA3 
X-CRM114-Status: GOOD (  10.05  )
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
