Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A240E606A338
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 12:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Dj9WzRnC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=aA9iACs4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=QiNUBtOW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jzFQaPPeRZJ0LSRqI7YyokUiQIzCkUNVclu+icvJdM0=; b=Dj9WzRnC+4ZGnk03sLnR2SM0lU
	j3+NbXtfZ6xrXoqZMBcNYHcLc8kJaescUIoH6AA8Oxm2kReOdQ5NK1kq38EQCMSdQ2MYHk/CxWXxK
	DrnkEM572k1WMYL4pIRCqi9paU6izywkB0lnd7D3NO3wJV+oh9GYrZ82armfC7cWuZh5ARwsjk4uk
	AXSlTQIpFh562kZsgHr0UyGoLs/Cb9Kh5Gelx9EX1hvbHFdaeXlF8wB3zGhVrBbcuhYwooLtHEu7E
	nrfhVcgzEizHd3p6KDa8mBbJ8OLpV3SE6lSnxUZHa0Zb5Qd3QBPtMWDq8fd+ZDo5iGBhscSGPJ7EC
	NkprEI6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlxM-0000000BhBT-1cYu;
	Fri, 30 Oct 2026 12:43:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlxK-0000000BhB1-1s6Z
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 12:43:39 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UBG86C2541690
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:43:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JQZcWnzFgAmmFYA/sHLwHEakiYPJA+ODTFEZ0NO5CyE=; b=aA9iACs4OIHPhKAx
	z3tAtDDkGHfnj0GwoaR/slfHPfGvqOuHHRebmCPc0vKZEmRLfCL/kkd2mYx7yypf
	mesFwnqXeolYDZbXWyw/2WJjzZkxDcivijWVA++Mw8Kc5Okcsd27AgNxMT3BV2gY
	foM4Gw5Y4Pm/oOzO+AaEpUt6VN3nUyG/s2+1PpwxmsmWbTRPH9ouxdMYB8gQ+P4C
	y43RHRj3CDalDugNjW3SGsw3hANONVoRAf4evoN5NA+pddkVW5N+yacfjWiLVdKZ
	RjC5uy6qBeyo7JPIvNfKdebTPOl7dQz/pGAaA1PSeMWoQq04xPyi3HRiVUXdGvIf
	yX3C9A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qk1wc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:43:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2e95f8543c9so7799095ad.3
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 05:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793364217; x=1793969017; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JQZcWnzFgAmmFYA/sHLwHEakiYPJA+ODTFEZ0NO5CyE=;
        b=QiNUBtOW/oAhwqQ+tu/ovFZ2seZqJ2nwUCr0n79zXSzRHU1b7JTQdrCFzlhXIfvVyj
         sRXUlmRAxABI0s9QYzPBP1MAhjHQoyoHvA7ksBbu0YoVMjCFmhSi/GrGPSOPk7jjsIjG
         qpN30TXi+vwUsteCzjthxlj6N7+ZsnkbddA7lqReyZgGbm+1GZ4CWrhrNX/E3b3KN22P
         y5BlKT8tFBBYzyRinf92Jc6wQ/P6Ri9tXKe+zIhOQfXRFnrn/LApDm0b8LA0ynOG4zfi
         kg+CAL6q8OxXveSMsBlMhH8kVAKyWLXylcjxb8MjRCEViNYAOQ0bBVTG4X2oB6VhEgw5
         xNoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793364217; x=1793969017;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JQZcWnzFgAmmFYA/sHLwHEakiYPJA+ODTFEZ0NO5CyE=;
        b=beMvLY11YiV7kTDDFalVFgph6cDdHUL9OaDPkBb06at1mKDNmQxvWoaQkOgF7QLl51
         lETi7k9TVsa8UBal6CwWrEjkUT1RtKSFZ7BTbGgmMWjh3ywnqUi8qfiLTN5SQxQo+7lQ
         bZE+Nt4WxyofPi8QGzoWo7GyxF97L4AChoPqCCSc968R71zqp5+Dk7ErkdB+RC+TxN/y
         b9UgWzKcv+od8nVVY45tcjzziSdo1Wj1HteUDjeSzHywiwpiSlSuK635qcVcJ9vQ5I2r
         7GPsV49XID7rfK8Pt5bktCAbe61qjpMbjQ/khsNT1YYiJEvFDNyUGvv9GJNx3QoMhCgG
         H7cQ==
X-Forwarded-Encrypted: i=1; AKwUvBxkYr7x3u9t0hq1Qs069a6C7O53iBLrbd3Q6YNFojbEgEg6LbvuBMrLT52MtZno+FEAQJWUSKy2bzs=@lists.infradead.org
X-Gm-Message-State: AFq9FYKBsZf4EMsQR/SpX4trwAtmHu4hyN8zqPlHkg1cWFE2b4WXtYmE
	u93h7OceXwuWwsqMMHZI0VEd2mkmfkVBJ0zQtq47th3e02NO73h2jb2/7MC4aBRyv0hu384Ne8f
	4XJiZlmJTP3vRUQPkEq6JchVqjZ7i+v2jUgzgEgoPF110zRGtu8DETwXXuRM3tZ8UEViz
X-Gm-Gg: AYBFou3HWYkxwaEGIdOdpv5ECd+afbhEJ6RU7nWK2QphEAYYCx8CMzLAtiOmZBJJMQW
	nMBqJiWcH8aCLOC3PPGNJXpGNWAJstOzU0z7zyeXW+vTzn5sEheJcU9QGVy5v5JfNr/+nuif6t9
	r+Wo/61L0HF37TZ1gkUe5V6foncvio+v5WbMafDFQaaA3RapxRNE70HV3E1phEjgBg5Tn9KgAXK
	oGeXW/PSEfGGyIsWL6yGpHmR38JPN4bqmD75hH8JpKPjziIlYhNtaYxW2ToXnV4XGFoGrHm+O3V
	zJP1pZ9O+2CNJczbZmz/V+WZhSLs5jhu8q5Y9YyHVATKckcLaheJTyN6zXB1h5CDWkE3VqBRvVR
	EcbtgoshJ0aE47XhBHErWhXlodSTsvxUqIuqLS3esGN0FwRghPLqK/N+gwBRw/Q4he3qh5mGAPW
	TbDek=
X-Received: by 2002:a17:902:e5c1:b0:2e8:1929:c8e4 with SMTP id d9443c01a7336-2eb36527d99mr22525665ad.60.1793364216756;
        Fri, 30 Oct 2026 05:43:36 -0700 (PDT)
X-Received: by 2002:a17:902:e5c1:b0:2e8:1929:c8e4 with SMTP id d9443c01a7336-2eb36527d99mr22525265ad.60.1793364216294;
        Fri, 30 Oct 2026 05:43:36 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb3922f5dasm6450075ad.25.2026.10.30.05.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 05:43:35 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 18:13:02 +0530
Subject: [PATCH v3 2/5] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi
 and Maili compatibles
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261030-hawi-maili-camss-v3-2-9742bca8cef2@oss.qualcomm.com>
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
In-Reply-To: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793364192; l=1461;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=O6JOHgjWCf6k0+eXloLMxj3S4Nm7SEUIMrYIjwRLIus=;
 b=3q6SA79to3LhfP25KLgv4CM/jRHI+Eaug863piJVxiwfuCDVLNdBFSp3qPp+LcZTmyL2pUt1c
 Wpi0ylH0f72AaZBoTsPa+f9i/u7hEkQPP2ONknjq1ttyu4rISfN1TDl
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA1MCBTYWx0ZWRfX0dgXUulZjS6f
 QjSQtiNjHNmAkVyCBzmX9SC/UpBwrE/GlOWhzWzjqYxBM5jDAc1kf3iJ4O9DGIwMRrMzZYDKAjy
 cidvPdiaYPdcDHIE3WIs9nt3ZKV8tkvQgFDiLPkStYt7IFRrkZs2HIyEA0QdMJGbBNdAnQo9PYw
 b1nScz2BdegTXveiXEf6U112nlLa0VIP1Xvp8CiV9O6pPh/So0Az4bXT9/siLsxvoGiNjdtwwtD
 S90bbvwG91yMgXCiYQmpp73FfxNF9hTUejX0+X5pjtkX8f/DUs8Qmn4ZQtlmY5pHjHB5dVdH7X2
 HUcV7/dB8l0QMuv8BkJ51kHeM+aMomTsHkGWuDUTyWICc1iDWwYSxi0rraFZvetHzK/CAHR75SG
 C/IxlcUTBuZHz2ckzn/o2PfuDD06dI6P2nFT0b8X5SMed2fzSjl+x+jBnNZ+hJXVVk/cgSYYhkY
 ltAXo1OBxbj8e6m4FIw==
X-Proofpoint-GUID: 4ul4hv0KnqGZdNoVCj4UOUiYBhdxOSM0
X-Proofpoint-ORIG-GUID: 4ul4hv0KnqGZdNoVCj4UOUiYBhdxOSM0
X-Authority-Analysis: v=2.4 cv=IumL47/g c=1 sm=1 tr=0 ts=6ae490f9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Qbo-v1IXpRF52dvEqNcA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA1MCBTYWx0ZWRfX+/+GDo9lDSBr
 l8UAk3FQpORPk9JSR0Etc5YYikWE0OfPi+AExs9zmlTWXkVy0GvtDXgjhZtIutLVkRgJU4Gc/ZZ
 XSHJTLp9jPqznnePneQ8dDSwHen/iKY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 spamscore=0 bulkscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_054338_596792_196EBA7A 
X-CRM114-Status: GOOD (  10.72  )
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

Hawi and Maili integrate the same CSIPHY IP as Kaanapali with an
identical register interface. Add qcom,hawi-csi2-phy and
qcom,maili-csi2-phy falling back to qcom,hawi-csi2-phy.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Co-developed-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 6e9eb8e265df93b631101ae13f31f6365b6239b6..627aebc7cd9b7ca313457d3f70f72796e9671e8a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -18,11 +18,16 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,hawi-csi2-phy
           - qcom,kaanapali-csi2-phy
           - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy
+      - items:
+          - enum:
+              - qcom,maili-csi2-phy
+          - const: qcom,hawi-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
