Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5CB60A5BC3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YTlFshOA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=feLuO0l/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=h+1iCvRB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=axh6FXV/kys5kR6HJKQ3VRQmPQRuNT6p06vjmjkRLKU=; b=YTlFshOAdsP8H49f4lo/UEUTL8
	mYzCRAueGKS+VQmmSOxoT6+xk9qG8FhWCMpo8k9v1ZtDn9SdD3St5VfPYA1pC3+YfWvrBIgDiM2J8
	/MKP9BXxsI3BIg3OK34Auv1L+ohS9lImhtTdgYMLGhjC47kq7N/t5uaE3dyCMsBUXX1WL3PMMEzWP
	QxfRDkuAcU91U52mcqkT0aqx277ciGWEqEEqIBJfFltbU9qip7xkIFftVX1gUdpO7Yr/5GMsshtPM
	LN4mhXYbmWXrla97fsjylkxMqtcOmqOCqYbqxM6ZIccQDvYvD0vuR0e6BoO5zivRtCiM7ROEqBLzM
	+XxuqG5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUn-0000000GCSD-2gWc;
	Mon, 02 Nov 2026 10:42:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUl-0000000GCQF-1W0n
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AMrD2880852
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IAj9mpmnJdc/Aq9gDDAyq0+2DmJDWgCFiwFRYx3AJ/s=; b=feLuO0l/CT2ghoed
	uWCaqsIZ2w3ODay8cdCXrpqJJAlh3aK0fZ6dgD0motSnF7FBmwAUNfcI8j2jNpoH
	wZL2zQ48H40pkLtHNzjSuaZx9hVzE3e2cUi87n0AdL/iX/lfYvixOAgtIkm9toqv
	OIuid24eBWkfw7rBeyamFIVa2+tmGVWBBPKBB2bBxWzV/sJMcKZ0DSb6oF2AB7tl
	TGkWkB/IsAd4UmrEJdONMYIoAv4ZSxwQAYg+ky/QN/uWE0prZj23nG7I12TywpuX
	hR+3Q/I3JbsE79i7GV7+/TTzdclL9Ccz9yQQEtIdrX3Rja2f2T7syKYUic1sYfNI
	/qi0kg==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpqfrgdv5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:30 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-5587351d419so2112999b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616150; x=1794220950; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IAj9mpmnJdc/Aq9gDDAyq0+2DmJDWgCFiwFRYx3AJ/s=;
        b=h+1iCvRBZSHcmj3cTLLcZhgO+IC32At79zA/gjptAZHQiR5whfYy1ir4tqBqpAhJFC
         ZSEg1bacT7Z93qm9tfuxspceutKM4camqZPoJnfqka0g6yluCkXVULX7zkqpyN0XIt9q
         LNsmYg3mbzWVbGSqQbByBnoKR1t4IB6YOp0KlZvT5JFJQT/AW7n62oUFrxeUyM2ogNQ9
         bqaCSGASXQ3GmFnQzp1dm6s3umxZkSzHSXPHP39oMZUXdfDsjMTnyF8pRE/TzQoQ4qrY
         zeiVyG0dnG69AyiFWzhKyVTxnOja/aKaFOFncrtQFWXojZmiDwFSsHu21ygsrOmL3aWn
         FbVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616150; x=1794220950;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IAj9mpmnJdc/Aq9gDDAyq0+2DmJDWgCFiwFRYx3AJ/s=;
        b=MOo7JsLJ+qcDKwajsO70rNg3NnBzcr+CUoiGlHnGDReKRkxxi4qNST6wVauo5BDA7q
         u2Vz/YhohA+s4/n2QTObCZd0jUJJoI1jpoaPEX2X0fYgjBpZo9bmxNL15+mnOKPxCnVa
         gVEdO9P8HoDqpwN0CNKNzNvaDj8U/x8U7unvc6GhnLAkgE54aHNL8TD594Iey0iBgASH
         xHR5RmqPKoBfOEMVjpjG0VFHnRuH3/rHuJewEU7BRah+WbIOGwJtuoWY97jx27Rlw0oK
         xVzHeAdkc/lBIIgm0WWyKlsWuQB4ZFRjsJsKZzG/B9sU7hDZfAwewALXeURVrOaRMO46
         J8iw==
X-Gm-Message-State: AFq9FYJp7/mUtU74jPpRbiSvWq0aUSZQHQ1tXB2jSXyeNyqP9JSbpQR9
	K4VsAp4x2rkceQMN3oFgdAxQbhsoC7X91wRZmzkaR1X8LQ8M3zE55BqC6n+9YioYtEoLt4fSZ8x
	Y1GRpZh8w0KePXEtAmx7wbwrkGp2VereVLMSDeIWdMU9f8MH5ZelvmAojv9BLc1XcwxAr
X-Gm-Gg: AYBFou2wfzkIhL+UoyXMrvPKaJ5eU6JajD/EfOf+WOgT0yB0sWDm0PYmOFw2qs/KTjl
	pCdIcYOWZ7HeKZ0BRg5AhOlNylpmBYATcIm2gFDRp/yVL4gFNZEPotW+1TEzdpQYdizrPnW3qhv
	hhAVwXB4VqiaWR/rjzZHk5z2zqaG6sgRT8GSfyED232RfN1TBQhAxK7rM6PDBAHHzjCX2OFSbuX
	iHtLuzPLnFp8kohzdbv3PiXZZYJ/rsnErdkceJWTTvWiftyp6PH6gQ9bFNJvZLtZyXk3xfAbHs5
	s7CaaOamTd2kQD6ZP6Ove8B0tQeTWSGgrf8wu95jwJGzMv5jwZTrHkX24hGNOpteWS3KGc0JQBa
	Vi475O/0mGQu73gfLGjWucsLQWclkGVrZ/pa3abQHSSKuN8/p1QFy3zi5hNiuqObpkdopTtichy
	kV9UWteCr1unFxQs73n3t+e7yzVtJE6dTj1R04NoFvW03SLmmQ/w9utHL3hmQ=
X-Received: by 2002:a05:6809:1c:20b0:4fa:8d48:3a6a with SMTP id 5614622812f47-5640dc2a78bmr4290363b6e.18.1793616149907;
        Mon, 02 Nov 2026 02:42:29 -0800 (PST)
X-Received: by 2002:a05:6809:1c:20b0:4fa:8d48:3a6a with SMTP id 5614622812f47-5640dc2a78bmr4290357b6e.18.1793616149487;
        Mon, 02 Nov 2026 02:42:29 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:29 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:15 -0800
Subject: [PATCH v24 07/15] media: qcom: camss: Add PM clock definitions for
 Kaanapali
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-7-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
In-Reply-To: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Authority-Analysis: v=2.4 cv=HMJWhYtv c=1 sm=1 tr=0 ts=6ae86916 cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=3_5DbsQPI53TjtTAKikA:9 a=QEXdDO2ut3YA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: B1MANVWNn955pbenJLiGFCh9M973KyfL
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXxMe3mbLxDQO0
 OsokMNRXfkYpx50WGaD5OmNLSgicWHzb+P8pCWX2HRdsaShGcsAL4VqkJh59Zjg6JWQXyqwHNN3
 a6o+hgT/HOTcmjvCn4pXl1kx75tWuA4=
X-Proofpoint-ORIG-GUID: B1MANVWNn955pbenJLiGFCh9M973KyfL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfX29DWhtp99bLC
 fVQRdz9LR2rlRK1W+HPnKaf9lLhjhbt8Q291EvbvFN6Z8F5ypRg/MEsxHn5SVXXJhyZZotGvVJy
 8nJiGU1L/Uvshz8Lz2T3E1XdR1I2pf5ozYeoXEpIOa/aud3RQzZ0Wqsay24BCwBrHi/NflRVbDN
 TQ3D+tnu62xuI7Z9iskmEmG1t2bJByl9WJTKhvxT5Sp30YXXqX1428aaJwwGh7hFDHkecLprG2f
 fg1y8ds9RoXj+QzpCE/LZGGsoCD75K/vsWZRttK6WDd7+5qG92GgzL8tDUUo4ljS2yirxVmlATy
 +n3XeBbbkvS/PdfhVNaXCg9H3HG/O6cyu8ywBPt+eVKZtLumGHIm32uF6Y2F8KzsNjYS+XEF6ik
 u3b4byNK0GF561fK4iHy0pLXACaTwtOPxMc/UhAxCnhZYfn45rhmF0SInG86RMWAL2eHBJU0p8q
 muuUx9YAlxYDvWAonYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 adultscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024231_411210_8A9F501E 
X-CRM114-Status: GOOD (  12.37  )
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

The CPAS AHB and AXI clocks are shared by every Kaanapali TFE and IFE
sub-block. Register them as PM clocks so the PM clock framework enables
them once when CAMSS resumes, instead of each sub-block listing them and
taking its own reference.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 385be682e8b9..3857515aac7c 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5606,6 +5606,7 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
 	.icc_res = icc_res_kaanapali,
 	.tpg_res = tpg_res_8775p,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
