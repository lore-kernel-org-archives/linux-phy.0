Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9FCCCD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 18:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bb+cl+Ddj0VHLSciYgYWhNkUPnKxdYGRlgrtOeltyb4=; b=VAVjAEgJXjUNtK
	VqYi1HvCvCeArVJPHfNrE+tW02XAo8n49TXYZJsbs+yNFlv0zzS2OO+/aVtJKDpLw7R33zPcOWam+
	ESmtOOFbv16gUuyyZJYflnHAJP6qnQnrhTN73nq2ZPN08C70ZuKKA30FK7yar8geipUqajXTHVqyG
	hLeDZKhx4QhPjXBW9YWEIXyculm0Pwg00Fv9a5BLH/Bk/UECOlXcMFNBVRjs7H5ccqXH8NIqz67FV
	3bU0qWW9gbKkZsNSn90H+Kx57t1sex2mA/I7Jc5t9pIjFrjrlHCod8jgok8Pd4priSwMj0zj2l9B9
	yn0Vco+fHA3P3HjI2LbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwll-00000002s6d-2xZk;
	Tue, 26 May 2026 18:44:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlh-00000002s5k-3IAJ
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 18:44:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64QH0rJV3463911
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0wSEW2ON+E2
	SU4GNk1FJGyc6Ek7uJYGIs/wvnW8nuy4=; b=FkSeWpaVBOzEh/V2OZ3dxX/Bu2r
	WKwiZcMgfaw5TOmTV8beWZcMkBSQpL7xhcp96U4Zfjns/fFxvyh4oAxjO+awzmHN
	El2NQjs0UU+FS64MWY23+KgLj4BMH4/2iknl+pUT9zKDHGXGxGsq1Nc10/SS22nS
	GrcA6RJvB4F5ziP4UwMx70XR1hHKdI062rrjCkRVgD084n7LP11+UAgsxWXElWdZ
	0Icd+7/FIRsSghKy8+/WjY02jKOhvxrtpCEyway3ZHeSZKGRHFWF1PnzBTIcnjuz
	szUtXHX/Lb0tjMDk3/HXYbeQVaoLUVSapgHKoCtEX8U1xSLBg6xHnY0Clvg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edentgrhg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:44 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3663818cb1dso2363207a91.1
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 11:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779821084; x=1780425884; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0wSEW2ON+E2SU4GNk1FJGyc6Ek7uJYGIs/wvnW8nuy4=;
        b=KMQpiZL3UgcAjznPq4TZ+Yd2OZJkoLUSmolal8O4gIT9nFadzbVwdpYeUZGA4vZApP
         +FyaZmEgm0rUtGZYcBdIU3TdSuXJWjqYpI4Zr3CnQ5n8Drf7IXcq7i4g0ms9Pr1V8ieH
         VI+LBVGWtJar/4r3X/4n0kXP5im3TS0ZCg//yX4Tcoqao78/mf4EKHMDdJXybxlEjV+e
         0FD0IhHw3htImbjNhmtKhArwmiCnDVOumk24IKX1Th55X1arO/waVCH3gpY22ti1kfHx
         XVrzylKZ2sifbAPhfIKsAbULqxg413goxFBPFdDo6epeny5GCDz0ES128uo3Y9yp87Is
         OxXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779821084; x=1780425884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0wSEW2ON+E2SU4GNk1FJGyc6Ek7uJYGIs/wvnW8nuy4=;
        b=lJERIczXMsWcvlD3BoWEYNLilRVNGbQM9dSHDFtkrjfmaka5P0+UeSHWrB27YIDLli
         EP2zQoAR5232DEwNRAk1w84fO/+Vnlya+lBmyv200/ZJcz6N8u5MaiZuRe+2wJDzp0/K
         FYF/PDBQBE3laF9fmZptq9KupM4BqeK5ApUktJTSWB1VTTVj5naUgY4zOZO28Qmycdqv
         PO0FlzFQBmEbIhkqO+VAZekTB1Ruay3GlmgH11VobgdszQyZN2N0ZUDT+4gNFOfWYBq8
         dhHW1jHR8XaEEvgEdUIWiMbIgOs+LJ93zLNleQO+9bXbFeZjkIg84ocQriWaPqoQyC7t
         aivw==
X-Forwarded-Encrypted: i=1; AFNElJ9D7BiPWilIcOd9lRP5d9IOPF/JN/2ZXdS5DLt7prvgHMhqtXqrOwNpjXH71hriZfcdg4GZ2+eTsVg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpPP+D13kFD/jl855QXdXTGUHaJivR6eVMEQRTPwN9AUkK4It+
	LAtnpNFhwBGDN6eLcpHLh49hsdfGfUZWHkeVClc8DlqHdjjxPy4w4q+vSDirmV/z7ILw9IXRY8r
	1DLvimBxvYo8S3d/Umc4sONTvjltAAnTjGJrMWrqM80ydqu7GHx1MhHeueMAHYKNiPHY=
X-Gm-Gg: Acq92OFZJxSCQPQ0W5QUBrpxLkXvKkKe+XGl/VVwO9t96Z0Dk5I8dw8LfPTV1ew61is
	jW2bWEyuk1iaI+qjHo4bjk7BO/wHrrgY3pzEAmFeU1NtkM/37wx0/SsR2rNDUoLRPev7gUyJnje
	L2D5QyLRvot5GobXPXEs6hZo1BmwqB2f0skh1zAX7dvbuJoOzmn9zDTlrRU0qr2yN8j7siN3bi3
	OB2eGlWU8HRVpeqqJXhU4K+7v5thNTs3myqOzSYiXnpcXL2tfUGejicPvJvBdWI+/YQzzMP4NT7
	LZxhEPrP3uYJLLbtfhwzjHGMdNTQxlZHzsrX6Hj1BskC10kEM3yjqTv2739qbkjcNuPRjfNcqkj
	p0lFfN8zhWgNeqsMWt4FBR/soMIePiZURG/o9abBn7DuzVta1JC5ATg==
X-Received: by 2002:a17:90b:520d:b0:368:f0a:1c49 with SMTP id 98e67ed59e1d1-36a671f4fa3mr10835729a91.0.1779821083850;
        Tue, 26 May 2026 11:44:43 -0700 (PDT)
X-Received: by 2002:a17:90b:520d:b0:368:f0a:1c49 with SMTP id 98e67ed59e1d1-36a671f4fa3mr10835708a91.0.1779821083427;
        Tue, 26 May 2026 11:44:43 -0700 (PDT)
Received: from hu-ppratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36a721c7baasm16866628a91.9.2026.05.26.11.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 11:44:43 -0700 (PDT)
From: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>
Subject: [PATCH v3 4/4] phy: qcom: qmp-usbc: Add support for "phy" reset used on Shikra
Date: Wed, 27 May 2026 00:14:01 +0530
Message-Id: <20260526184401.3959717-5-pratham.pratap@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
References: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=Ja+Ma0KV c=1 sm=1 tr=0 ts=6a15ea1c cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=PuS4rQwjIVkbyJhllawA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: 5LvvDMCfm1xw3MiXGIInnvBEu9QPn0pM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDE2NCBTYWx0ZWRfX6Dcsb+Z/lu8E
 eSXs4jJsImEuUu56Rv+pTQ8UT0XoBQ0ANJL++4Mf/L/yj+6GhLda7RUescI6uqvXVHHVLLi7jO1
 ZLJ5T2k8ZiIpGOhxhGwgXCeVBI1QmFQu3iJWR1yLU2APoveMsJEqpdMGWBBg25GiPINXTOwtay2
 Uuev6/77KP1CDl3zgWmRhMcw9I6RcwqLcY2Okv83bwEBFiN4XW6QTpj8lwz/O/XspaspC6nMq1I
 onQ9GpEd81c+v6NwpSNUGixrAk7g1G5cp0G3Y9hC5MTNGCUxCaEl3bR4FmNicLGZkflMw2zeBNP
 XqGFoeGfJns14QyTTmwcp1bQ1EFaFeS3GuNTtZxiEp9xwraWJH+uUlus5PVM0APwl4vcHamE6NQ
 Vu0Dy/sItMzhutqHJN+66Lc9XW6fDzCu9gE0buW8LDHbiZJanYghfQMiiFD8D3I0VtRfFaXRagF
 eFEE1wQPrAq06u/2kiA==
X-Proofpoint-GUID: 5LvvDMCfm1xw3MiXGIInnvBEu9QPn0pM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-26_04,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 phishscore=0 impostorscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605260164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_114447_687482_BC80DF75 
X-CRM114-Status: GOOD (  14.25  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Shikra uses three resets (dp/ phy/ phy_phy). Add the extra "phy" reset
needed for operation of QMP Phy on Shikra.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index c342479a3798..067e7f6e5642 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -513,7 +513,7 @@ static const char * const usb3phy_reset_l[] = {
 };
 
 static const char * const usb3dpphy_reset_l[] = {
-	"phy_phy", "dp_phy",
+	"phy_phy", "dp_phy", "phy",
 };
 
 static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
