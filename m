Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E44C606A890
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rxygIkZ/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=DUsKaoMQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SpLTg8Lz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4RsCMYzFvLQI2L6wQo3mYfK9fMesr6QPIEEgFkt++wE=; b=rxygIkZ/YSWsrcZXoBrqiVYsdl
	MPMmtKCq5iNkP4uPZ0ZKd6VWrwjf7kGYS0B0QAKG4J+msIDXnV/Wxgj9pTjdQq7Bq42rkhigHu2yL
	mlbo2PHn/boJpFlbVWulGs/rk84E0KsPSxwe087fzExGBCUXmtwozNbiDcHjSeGMVA9TR7oS9Mj8p
	wnH9xQaCMT8vqV1nO6EM1TCpJeAXcK8G5O08wyaOBmYPjo07GU36/ndgUph2o4oflYzKCZMDbFklO
	6Lz1RaENaA12vHSVoBz0ABg+nTxezC/MLQ16GVETOfEYH/dU3qtNe0vPdDqwquzP/A7cR4+r6vYRG
	VfFFjzmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBy5-0000000Ftq9-3oO4;
	Sat, 14 Nov 2026 11:30:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBy3-0000000Ftpo-38hE
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:30:48 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wHrJ464937
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F6vcBhELVI44DwyuNxTZrVH7X6TGjBEQZ7lsC0zR6tA=; b=DUsKaoMQqwLjn3CP
	GmkBwFw7dlMT9bJbPsmxeLuooMsJdVh3ap9iL23QewWIGSfO+ccKdPLk9haA+AG8
	2NqJTURa05MlevM3l+JTFF+wqmlLk4PkYc52qur4yEVIRKXeaxKJGc2gG32AzJPc
	t/7xHn/5Lptq73QI9syquxkA8ukFmhOObKPX9pN0WMUU/ADvx7vg9jU8W40DxkG5
	kPeK43Y32gDQArSqdfRly1wyUBlIEXiRrFLDvEzZeQyZJFPqsKz1MLbN9M4azXc5
	0FH/IGmONlnisGFps4OYDJndtDNMWxystIgSr3Nb9/xbArVjBgiUPL1t/abbtWo/
	b67ElQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhhdrmdr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:47 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-91c6c1e082bso51077126d6.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655846; x=1795260646; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F6vcBhELVI44DwyuNxTZrVH7X6TGjBEQZ7lsC0zR6tA=;
        b=SpLTg8Lz0RIxBFTCGJ7VDl1G+p+l5hcVCJKobwSA+Abu/i2kdsO/0o/F1d8x+rXHnm
         3L3IKN/IyJSBmtlC4J4WOMF9xnMA35W092Cr8gtCWt5rYib1gm5nB38zFdwtV4UweM/q
         eBw0OxGbMdO1GrLxffNrYd5os6uQ+6ZOjNLnLkX+IBcs/DBfvM3Xqa905Qd4V6+mZrd1
         oRxCV2njNvM3y02Wg321BVjZE9m2iX9/lMYD2m+ApLh+un4zLbGDZdVyIlPJjNf20ghf
         KhsDEQU3wCUTo5dXqMgErbeJVg7PxHCu/KXjud6hqUP2a6vSXsXVkQ0k5XBPADsHmIU9
         IiYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655846; x=1795260646;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F6vcBhELVI44DwyuNxTZrVH7X6TGjBEQZ7lsC0zR6tA=;
        b=oo1sK/AYnoZR0VK+f07nNmSjw6qSVaML9pLbLA/AbuDQPkeAnAo14nSiM6ZXGPHN2c
         B2E5HuCprlFBuDaeO4WS6I3209/ckS3MhxmZHjDJvfnyqFbAMvgIvD3PBrDslXbyt7LM
         /n/5QHeTXMlfPLY32zI+g9GSvc5Ez1ibZ2x6kIyyuRCiZZP7brDTiY2jKdl4VDzlNY+W
         uHHxRqellumeCAEIzskERTIk0dqcU1dBNVZaQGu3enn9l0qxKa+6D0LD9myxwwT1n7Tr
         09ZTK3xV/fwN4VSREtbpP7B17uuKfIH8nErhu1/7+v/s6SD9eMJ7h3nA5smVnXErZErd
         AaDw==
X-Gm-Message-State: APuU4Z9rj6zBUHO9mIUnfqNfQLEZbqrvY6QfjthFbM0R4SpIaTrA46XM
	t+zMGeckzF8zs7Qp9WAGYATXr+U1XZx0fhlrq+BP91vHYAkdNauKldRUmB3/OcWDs785WDu1Uzb
	WrbCoAum9klmov5V/uTGJ2GOicgiktc6CS75biSltuSerVEOgkhZhXwg07+ipNxjubm1L
X-Gm-Gg: AYBFou29wZjayNTWygm7z9BhgtOWoN9mZ/9tBcrHuFG4dM9iOszJCNzbm37E+gJ47CJ
	kEXT0h4EoOK4GBhVlnZnyaC1mdNlsDNib+L/KVYAQSd0M1LmA1epe0RqmpaP2fNj2IEg++lfV/u
	G0y4vDtZQsNfMk+H1NzTfFU247PpqaT5zgntYs9OTngQIz3wUGOYE1ryTW15/CmK+5vgr6+UxQw
	hEQBkWj6vCTch+q26dFDEyf3S0uPNOPi7ia15QCc8nytkH3Oz0JQ5Xw55u6f0yzRyKA79GEKtfY
	bn07BHKh6FjELF1r9wdr6Mpodhurjk6PSMtGbHsnQW5kXxomDVutUlkJ6aYFST5a5efGt0D+64u
	CMeE03nNuX7QrbpQlK453B7+8itx7NW1jRY0MkWtW4Z/gwMIBSIXlT9EhUUrpLl1ImQbUdSvNjj
	MzK5O23EC7UDqvMQz/fTv1QD+Kv7o4pLU4dGXVFa70
X-Received: by 2002:a05:6214:8450:b0:91c:73cd:1bf8 with SMTP id 6a1803df08f44-91f24221a44mr66777306d6.21.1794655846178;
        Sat, 14 Nov 2026 03:30:46 -0800 (PST)
X-Received: by 2002:a05:6214:8450:b0:91c:73cd:1bf8 with SMTP id 6a1803df08f44-91f24221a44mr66776816d6.21.1794655845679;
        Sat, 14 Nov 2026 03:30:45 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:30:45 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:24 +0800
Subject: [PATCH v7 07/23] media: qcom: camss: Add SM8750 compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-7-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=2778;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=gsNJ0bz9+/X/AkRkdNGY061gEk+2K0yTWnojGIi/oiQ=;
 b=iYfQBfOxerbVvRBNep3yoSplTsIkkpQ9MjVaFAqYYy2Z6KPAXHcu0YBprzXSGPgERlBHoKn1J
 SCez2ZmCgyeDnqljKkP4mskMeghbM60yGLEH3W42JrWg9XFrt2g1DLn
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=VOVIDNPX c=1 sm=1 tr=0 ts=6af84667 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=gE60Ov1lhapgyOv8Ur0A:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXwqW5VHtJsNMz
 OTjI+F4uP1UtvEPGhY9fegHICSxVukRX0VvsCN7Z5CSJx2Je6jA2or4a1Dsus//FbZJGyKKvomn
 kZPw4/lurEXMkpn+RaqYGkdkVAAJLuo=
X-Proofpoint-ORIG-GUID: EGJEd-T1cpyFIDzpwX0T5Yp9FQgIQzI0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXznNIfSCin+Dw
 KPeqOjzuWe1+kSDwzx5DMor2k36fEKCKW9cvX1MyViQJmEKpzQ6HsS4+pyBwSOnxuUQobVvTDuD
 65BTe01m+QQ22n2gazIn5UTl1gW98Ha/Gg8h0nXxX3UkUBqBFAkczo1Js3akc23j985e1EPdzfP
 J3x0ZRluYrTetxsd34D4OAdOvVrlbGNaMEy8JGVz6mv7iQlU0LXb6eM7jMPNN6MjXfvPM5F/x+A
 CToVjwUr4AsD9kXDcyGCRg1opugDsRhAKD5UbJPsNAtw5aC4KURPdqlkdhqCWmL2Q9oTHFRLfts
 IfEVn3enekQF9RzGD8kLTom5UpnNTwbiKPBxspAw38hUEGbykXqtcGvzUEls10RMNL5AcCtrR4p
 OMurRgdIs77upHplExDgFhVsDjjNXKISVz9Bpu08YzeGazOSrrJw68vFAjo19Tkfer80Fgz+3bU
 AI3DsNdWms60gB1tlBA==
X-Proofpoint-GUID: EGJEd-T1cpyFIDzpwX0T5Yp9FQgIQzI0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033047_803157_C185614D 
X-CRM114-Status: GOOD (  14.64  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add support for SM8750 in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 23 +++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 24 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 73b3850bbc08e857390330032d27bea38b8a10d3..3f9dd3a2ec088fa87a9ea90d25c906d14b9a1896 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4308,6 +4308,20 @@ static const struct resources_icc icc_res_sa8775p[] = {
 	},
 };
 
+static const struct resources_icc icc_res_sm8750[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
 	/* CSIPHY0 */
 	{
@@ -6026,6 +6040,14 @@ static const struct camss_resources sm8650_resources = {
 	.vfe_num = ARRAY_SIZE(vfe_res_sm8650),
 };
 
+static const struct camss_resources sm8750_resources = {
+	.version = CAMSS_8750,
+	.pd_name = "top",
+	.icc_res = icc_res_sm8750,
+	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
+	.csiphy_num = 6,
+};
+
 static const struct camss_resources x1e80100_resources = {
 	.version = CAMSS_X1E80100,
 	.pd_name = "top",
@@ -6061,6 +6083,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
+	{ .compatible = "qcom,sm8750-camss", .data = &sm8750_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
 	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
 	{ }
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 97fec24e680461a477add23bf5fb0b486903ba5b..3da970d251e728d339d13fdaef23ea5dfa46dd3b 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -95,6 +95,7 @@ enum camss_version {
 	CAMSS_845,
 	CAMSS_8550,
 	CAMSS_8650,
+	CAMSS_8750,
 	CAMSS_8775P,
 	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
