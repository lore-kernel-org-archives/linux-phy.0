Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE8F6CD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lL4MNQl6r7ODa/uM9Gl/irMXJYifvgfZ8/dw8CDpzRg=; b=f0v/B2ei4V9Jak
	8DQbzWzkZ3brFgjaQcjmXMUn8zkFDG4aqr2vhn9HLlDPgpvLVJEyqXEUGnVyvWMjoDiqBMkZlUsRw
	MpvdNHQXFC4ma/oPggl8x+NmdYjUoWdjtintw4flkk91924FrFpPBtpm/ciweRgtawjHlBJ0QyFgq
	8zupbsDpHqzH8NzzTnDwOZ5Wj4ZC6lThk9e2ykA4EHULY7IQSWkK26xGfE/D090Fhbo4Xcnnf1Hui
	QmLDw1qCxwIVaA/ywXC0vwig3iqkOWKkxiOv04RYzZ34+fZULVJxtM1GtdhLAboFuhSR1xgOgpxAo
	mavrU+9lvtWEffZzuikg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRnnq-00000001TC0-2Yu4;
	Tue, 26 May 2026 09:10:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRnnp-00000001TBM-0qhQ
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 09:10:22 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64Q7wNEv1908551
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 09:10:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9MpKqNNzUQn
	MR+cmU3gyGCyl3tS5MB81vXFKtNUOtS8=; b=UF6Nei2kcAR4RP7j8c8v7cCNTJ9
	DktAj2gBXt1Tpu3U+G6NQyzf2O3sQLftKBt1hS5d2O9VmccBAnwHpH9h+ouc6TFE
	ydCuk+1YJBD2rGQZPWW2kmGo3l7NQlH9MMQKH6L5ZI86sw4aPDfEc/D/Giueh2ee
	RpKllUKa7CHA+iHGierwa1OAm/4rABoYRTdbOqr9k8r77BELFcqyRxyDJcKT3ULd
	SRqmp04MxE+6muCQoimTI0H4Onb2UWon4VIwEEJjHLk5JLGqHNybY09F1UId95iy
	YrGAQ1DYJTCkd9InLI36IgYlbQJYxAJuQ+dqQCW/QNYKByI2rWamsZ6K0ug==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eckmabxat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 09:10:20 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2be9e0905a9so65976965ad.3
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 02:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779786620; x=1780391420; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9MpKqNNzUQnMR+cmU3gyGCyl3tS5MB81vXFKtNUOtS8=;
        b=CfU3gocpypSJFA7fiRhZoejM5w7yfnqfFWhFRSAyk3VuafawpUjtuj0Hyp5unjHkE4
         PYPuAqXKQTLVAwAJtJaZ2XU7TQZRZhlZR+dBuqZ00WAi6m0VqBRgKt7uzR9teBgjcul2
         nJUZ4D4bshTWU9BTLkrkZVnoh1tuLHSyRRKO7gasHu6lmcLYYKQqCN/XvCOlnOaHXxWO
         niN05WeTVQ2m5ZQdbFgj9HDwsVqSy99AjA1s8VPhOlHhlDJhLP24VsFaj3y0GnTwhqAy
         Y9l7i0pXGZPgoiQV32SV1d86BaxFYBgOvOQreJsY7Pbgp3HG8PwLJPM/qqnMQOKYmKVt
         yWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779786620; x=1780391420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9MpKqNNzUQnMR+cmU3gyGCyl3tS5MB81vXFKtNUOtS8=;
        b=K1shaKRSRXTyyM1yJUWlSwaHm8V4GaaJgGnQZjghTKqljDd99ShxvbCvxD0EJYSnx4
         8rhQXAHkea7xkOZKZKUaQWe8M2C31Iybzs+GGhVrDKrjVZLXV6+eO05F2rlO/KhTZ/p7
         haDiLIeC6DApgvPr7IyuIHkOjyQ4L049B6FyFd2TxRphND+B3qh6AzIqkt17Kju2Xy/o
         2bZmaw6FfdurEswbQASA1+YjnSXCpI5R+4Bg1ePhTKcMzjNENGwdw/hJbI/lNgYG1Hv+
         FPFbDWrTnqk2BMKqBqITveap57wfs8Qkh/r37vF1RNsRF0L0crVGoLWAMmgyBdtwMj5I
         qPCQ==
X-Forwarded-Encrypted: i=1; AFNElJ/yNx1E4UTEHpB5yYc5oPoTdRcs5+ThxvvZrP6NR4DGQmiYnBoiXMkv0LWSLX+Awfj5ZlW0IbnAD5o=@lists.infradead.org
X-Gm-Message-State: AOJu0YwH1qHDkN+HDYDjgpAjSj2mlqDDdHvAjRTU+D41+3ZOqGxaY6LC
	y0I3KFA9Mc68oZnxCWOiyPYKGQ638hErQNSmVBCibaTaGZxXQvY2KOaNsoSZPIsxz09eqyYMcl0
	q2nQj0H1jN+ObAfhtJ2DOW3t4hQLE7IAV0pXQee2pjOuTkei2S2B3YALKC8S1FLNhBrNo
X-Gm-Gg: Acq92OH4+WrYBgqzV+7Td8LT5rLebo8js0l0XOy/T/C2v2zXa4/SOV8cLdnBbImbbVo
	O7choWtARBLShljHG4p955baJrQ8TN1bn1/7CO34m9jQVkgr5TfKqy1eiTNBpowrw0MwDFBTqNR
	/fKKrmAuLlD8rVKN2Tt2n9/GPGRtNIeDjkmyJWyAa64Eg8Z7rRypx0ZxGghLvY8zC6M6wiZwYxH
	rLl6tiSTxPnXg/Po3ktKJSlzs/PapHd3d4h+UmR5idmuNEWpXvr0Acz1O28jQ6sbxmMc70pVVHB
	iT7TZJ60HpjCkP1d9AWbDMjpZp8jykM5AEmrn4ASDicU2aNhnnaj0Ephik1K+lbSPh7XboQOgRi
	a/fJhS5geAI62yBMrmMhHqDgrXimER6fYEsgcESemLOIvt+rHbQxPTPnIQ6QtPt9O
X-Received: by 2002:a17:902:e790:b0:2bd:9061:d544 with SMTP id d9443c01a7336-2beb06a07cdmr186884315ad.34.1779786620089;
        Tue, 26 May 2026 02:10:20 -0700 (PDT)
X-Received: by 2002:a17:902:e790:b0:2bd:9061:d544 with SMTP id d9443c01a7336-2beb06a07cdmr186883735ad.34.1779786619631;
        Tue, 26 May 2026 02:10:19 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb5695a40sm109237915ad.17.2026.05.26.02.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 02:10:19 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
Date: Tue, 26 May 2026 14:39:54 +0530
Message-Id: <20260526090956.2340262-2-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=cL3QdFeN c=1 sm=1 tr=0 ts=6a15637c cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=MMZtLZuhhDi3SW52_uAA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: hZP0ERzwCZELkNNdgIe78RwVXIjH244X
X-Proofpoint-GUID: hZP0ERzwCZELkNNdgIe78RwVXIjH244X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDA3OSBTYWx0ZWRfX8U7Tqoh+Rk6d
 zPGojIyqks74teRDqmZRTZp44iVCZXXo5m2rZy415DqO7jQXUYgw+YVf7ue/gfSZyz9JOO1wt7B
 6pRIybHhDnEhD7/TRM27g0nOo3Z1tgweTyvBUN2+lfNqWF1o7WaVV5heym6/x5CuOBjjB3Nr0b6
 cz+RUTPxNz+j0mElCNb+2tCLzdh3isW9jUnSzHaTUAOSFhIQ4dQ6Vf+1EcvooDoc4uyGusmaKbF
 3asnLW4hU+9Z4d9GA61ainAghv2EPnSJvlSm2SrTPpYpWOR1fa1aWm1DPxrs1E7UaWIyvxIGZk3
 cgTBkTJ6fkhYj8XaGoe9xlInpNkhYXiZQov6ZJmHffnzg6LBy976H1d2bXSGqMzYdgyu2l+tukm
 5eeoqHd9envmnjtnbOVpLBEFrsFuPeqMxdzde78tATJvZ+7r0wGrl99SY6G3AGXA+Ac85DiZpEW
 0L373AJuB8PcG/1gB1Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-26_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605260079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_021021_282595_AD867629 
X-CRM114-Status: GOOD (  10.70  )
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
Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 9616c736b6d4..b75015f3ea70 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -37,6 +37,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,hawi-qmp-ufs-phy
           - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
@@ -107,6 +108,7 @@ allOf:
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
