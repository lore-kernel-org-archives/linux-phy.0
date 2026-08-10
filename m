Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A92F7C5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vX81F8raNoS9nP4MmPGoTuh3VlCxrVrv9NsHcaxltA=; b=YyhicXLYUgeIKK
	UGxgaJrnbwRsfyLiPE2TCaAUYHthh9Y6uOSGvIlX2/lle8wMFFL01GpWyayYlpB07ZnPKTAKgvH6B
	Dd4xZxfQIkFl+rdGbTupINxwx8w5/drUc9se+HEn0DDUi7uvkJoZvmZ0mRsWXhxBOME8PxU+8h2XE
	Yjyhv+B+n3AO5u3rbNcM8h+WuL5eY+4Qt65GJXQHyuskaeQg/QJo5MA17QGYFKw+XU9kD/rSpKvvQ
	Bf9/gdy8nAMxy8PmeWiASsSYyZgGaB7SYTrRTy4g06TQbISCNelU6WXuRkQp1TmAcyEBiHTJ+hb1V
	93Si8IME9OEwttHdfdyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP2-0000000BePf-1Vsb;
	Mon, 10 Aug 2026 11:42:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOOy-0000000BeMZ-10tW
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:47 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9S1JI1189336
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SDHhYWHx3GJro2jJt4Vqu4DzWH4xZAmWrvNNJ7vmnk4=; b=osfTvwyzBKQMAJZq
	2G6Uavflj0vVcaJppNiLaLPlmqLbJWPyBu1GITbU1//8ffyPy19exZWFJ+iKKfqj
	Z+dIqZsWeQTDU/Bde8nKs9gNowFTOLO2XwIzJSRiJDdbNMvMbiE2342P6LV2LwsS
	mWRMnQolW2wM/3mqNTYNbnzIKLkhbKplD8ZlVN4RpqpSiKov8oT1AjM2Yj4JNUzX
	f6FVIjmHk4Hkt6891SFqaAybrjoCXo3XRz3+uCiJPKPFsFY87KMcZVnGkdwBpKOt
	MGAfkvIfj393DhlDv0i0O6YjDRbImRCglh4vlQDCebUsSi4D0wrEfl1/5tSYhsFI
	inGl5w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v29cnm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:42 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51ebdfceddcso22418001cf.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362162; x=1786966962; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SDHhYWHx3GJro2jJt4Vqu4DzWH4xZAmWrvNNJ7vmnk4=;
        b=kiE9uFG+3+njZ7rKRzAQONSCBkNdatl4AeERhg8fGfETcu3H/+sjBU5LeJw6iywuM5
         JZtZ6oGjxrDVQRWK2lHKNFYuqf4CyoAYGcig9G8rpvYx4QtDdB5F0/fkhlaENJXePwnZ
         Y8DShh/8DxoKry5JvBoybqd7t6fqqyiVus1Tck018UBCbzHjRGQCxJ8MWtJD2AfNsx9q
         MF2k0lMmUbYXqMCgymiOi1iz5kqtJFNEhQk80NmlIp1Pr+IfnMJaN1uSNSi0Wz5fqL9o
         X6sNRqh7zlAJCXMKeLn8l2RxSFeOw4TN1Y2XKZbByOEaPMx/xzaXcwxBZxIou+GN0Yfm
         x6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362162; x=1786966962;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SDHhYWHx3GJro2jJt4Vqu4DzWH4xZAmWrvNNJ7vmnk4=;
        b=EwnnEC12UspbbN/80LIhzM04lICCzG27k6cgfl8X8hoQ243KshZOGY3+thjOtm1tzp
         ZyfiOtqymLQsox62JpZa74C4vkSSdf0+NtTUIHQd/eMpEzzS6V3oVU4dfG1FTr0z8m11
         rXXXkwUShDPANj6BKa82r6l6DuPSxffsZMrLT9hnPmzaCYk3/kyRzfUzwuzbV+1qSdmj
         E/LRTq4z16csN4kP/z07DRob4iOp8iYOUyn4OID8GFbLclHQr3r3Kht6teDn3QFwI2eq
         bxFG5HkLPG0U5/21CvDEuMHeArfO1DSa/vcp9dC6tMlkDKJUfHVrS7dwsKjA7Slhu1t9
         iIDA==
X-Forwarded-Encrypted: i=1; AHgh+Rr4K00zOllVUwzjYYqAfk7Iil1Mpyu+5jteiveNiXja4BAzbDzQWLA8Sc/Y2Rmc1w0JWKhkcCDZmM8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy293vs6v5laekJvr6TdyZRm7TfKt4olYz9OVBKJS8oY534BKsR
	UQVt4SUN10WD59cKtGAOhjLjirdNFjWck7UefVJO/NY72ljQzrUKl8gvUun9tIDmS22qzLEgEvn
	mTgvbvnvn/bPAQExSJICTwiy8BCR/5y5NuKEykOip1qX1/c1nQ5mLMSVvc6d1dDJyvLL04BLalO
	C8
X-Gm-Gg: AR+sD10ZlqFUOSvmZ7ZODASomCJYPw0o1eNbQggArrT9jMiTIiyp+8MP+dNcmkrAoq2
	CYKf2GD+WiHO74a+QfPVZ1OCACrblnCIOBVNMi+mIKDKM+Hk4oxk/+10iPdFF39WTu0u4oQaoZA
	xVn6uT3exfOq68FJpr3Dx0qW2fQ9kh+Zim5pUKEDXL/fW955+GCyW3/GIvT0GNeh9lkxnNFZSlj
	XH7OBA6EfTgdgqHwgLSD3phjs2ZpxGQyx5LQF1qerhIV7jt1rHQjyIDe7WIkHfQjvKi5TmzDN+W
	EJndyRsJlDOBsGHlUYmvB67T4qKY3ybHhGEaXfx1v74+VCIomzgmqB2KSgG+lYGGnvWXx9YmvVI
	gENqOaoEPJZ2LnqO/NX3c4fvllLWTXqDtIk6b3Oa22sEZqMhh2F1Bi70yDzpDMn/Hbd5/4UzCX2
	qPtslDPuVCTvdMaA==
X-Received: by 2002:a05:622a:53c5:b0:50d:900e:c1c1 with SMTP id d75a77b69052e-52d4be1a6fdmr9801061cf.7.1786362161958;
        Mon, 10 Aug 2026 04:42:41 -0700 (PDT)
X-Received: by 2002:a05:622a:53c5:b0:50d:900e:c1c1 with SMTP id d75a77b69052e-52d4be1a6fdmr9800561cf.7.1786362161461;
        Mon, 10 Aug 2026 04:42:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:33 +0300
Subject: [PATCH 03/10] dt-bindings: phy: qcom,ipq806x-usb-phy-ss: add
 MSM8974 SS PHY
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-3-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1137;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ITMy3XXDdoRhBPGbOVQrXlucI2/W45zsUXuZZWnavdw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkomTnjHcCd6nz3fUS6RNEbpdeJ0MAPF/iz0
 1xmLLF66LGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KAAKCRCLPIo+Aiko
 1YVBB/4sjxT6n2+RmwKxwbuq5vt2IrhORlwfQDmH6ba16857DNUAleyku2Hlaei/nxogyF8/S6C
 Tm1c+5JNCIEczvSmTzEgEBrkGDkZ4ThAP7bdKl7Um5zJRXivVsT2nlLEWeBA07S47nd0OmXMYnd
 /F6VnUiiwsd2OsIz8LnxNAzTVl2fHaQELdFykdueLilDczls+ROpmrUnfh3tUCIX/n+KRerK1Yc
 SppNhyOFPDOk88RdhraI5fFG+1NKXo1MHd6Xrw8mrQTXfLWFF6J5BrKjPFNZNtCtSreiqWr51vY
 EcqwjbADMNbEKmKeRENcfedQNz6ZnWbUgTW4sHIyGDXHyyv8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=S9PpBosP c=1 sm=1 tr=0 ts=6a79b932 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=kaDxNF_GQ7L6msPqR2MA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: idU4Yj4EQmmvKFte-aYbYoMN83pOeUl8
X-Proofpoint-GUID: idU4Yj4EQmmvKFte-aYbYoMN83pOeUl8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX1tWspvMVLVdQ
 0S/dg77lx01xiIlFXRI8w4d7E2ErIrin1NgIeckEoqxqoy6Ai0+ypeghC7bi8VTiAFLyr+yfUvW
 HNZB60DDlJnXujF5xjOVv6pjxEQ5VvirYlJP8MyKzhG0KLym1SHFZoXGUhC2Pl4I1uf1SQ8e9gA
 2fQoKMwUgWwEYc0GAyFXXs7QhVdpJ2UC6/qa0ZJWqzTizZl0FCyLQZ/wJkEJYqAKFIuA5I41e6y
 BZpQSk5gHtCsQM+MmDvq4i1s+T4xRREl5Y6R8VQjagG+6kPsCbUGtwvht58ldRH1Xafm92nfKpF
 eLv4evc4FHMwFnTGgrWaNvRA7CMIDpnuAwkX4Mg26k+C321HVhutAwM3nffJ1s8BIcA7Oaq7K7h
 6lD7X8JTkcGl+ROg1rOsvQ1h8G08vNtbOlpO3qmcWu2ky0/HtIvzhc+KASAFI7hmYUgZXHLfbeQ
 P0ZgirWK3jGVIqRzpGg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX4fSxSjWesAjx
 KfIbFI51b1DrjVQ8FlkzlMlID84c6CA6rdZ1BSJDSfSn9piNkek9yKqIFgEQ9EUTOhBCSHswTYJ
 E8L+2W1INX7JditAcRJmaPJ2AsYcZ5M=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044244_432296_975F4C1E 
X-CRM114-Status: GOOD (  12.45  )
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

The MSM8974 DWC3 wrapper contains the same QSCRATCH-controlled
SuperSpeed PHY as IPQ806x (SS_PHY_CTRL at qscratch + 0x30 with an
identical bit layout, CR protocol port for the lane registers). The
SoC-specific params differ from those specified for IPQ806x, so add new
compatible for the PHY on MSM8974.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-ss.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-ss.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-ss.yaml
index 6cf5c6c06072..29cb43cf7348 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-ss.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-ss.yaml
@@ -16,7 +16,9 @@ description:
 
 properties:
   compatible:
-    const: qcom,ipq806x-usb-phy-ss
+    oneOf:
+      - const: qcom,ipq806x-usb-phy-ss
+      - const: qcom,msm8974-usb-phy-ss
 
   "#phy-cells":
     const: 0

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
