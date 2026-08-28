Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B988C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 09:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCGM9WFWFCMv9iU1QTrPozYwHirgq3sfmce6QnY8vYQ=; b=Uu7wpt3gP97h5F
	oZpPnc3zlTTKrMsOO9nUmNpgRs7zfInX/JUwTLlVveUPpVGNARa0/6683bKzZzxuDOcCY6d5j+l43
	Sk1iDpPYHpxGeDaogH84US8IvLMr4juPJKADqOYnJosO4LiXQSQxLQOxlZr2BbIeFJWdJiW9DmCTk
	tNJDdCTSLblI1Kzp5d4WXeE2AeeQoEqTG/tGzSyQS+v+teelyWi3bhXGj/CzajMj6X/i9UJPMCE+C
	2RjQMLloUqCE32YF2RcHww5MWYvPpKnKIHdGs4JGNyLLLlyURY+0LT4cs+U6rx2n5/WbS5S4C0KQK
	vFChyzbeMqSTiTYJz0Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzt7R-00000005V8Q-0rb6;
	Fri, 28 Aug 2026 09:43:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzt7O-00000005V7D-3MhG
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 09:43:28 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67S66gxF1605974
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 09:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yFmhGdCQxjWoN38GCOuMwu32e/UJVZjw14beK8J5W+I=; b=ETF4woTmv6F1egZV
	HIXHkfY5XDqJmNeU/fE0aZP1/uimm5olQk4ZCKTwuS6fZBovXHxJXH+J7a4/ySU+
	KyizSOpRDj6teu5kCuO9+YCXN/GL/rPfNCjYzD0JYueayVqND+TufPMVH6LREORa
	ICb+fqCFQ9FnckjWEZVoK6Xy8YfUdsjtJxL7koa0H92nxsWLCxH5Ty9vl7Jpk2Xa
	sJ9lHE+tAhTf/FVmjCxo+2gcBySyodo+thtb5ngIDvu7F64PT8IW/lfcNmrLsmli
	O796wqvz/o96BBf98ayxboN3bZk6GTaYh4wPjltWnmUDXoKlQ0uXA0pnaTeKob9K
	iSDyvw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb42r91m2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 09:43:25 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc1c1cc5206so932246a12.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 02:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787910205; x=1788515005; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yFmhGdCQxjWoN38GCOuMwu32e/UJVZjw14beK8J5W+I=;
        b=QH+A9qXOZFem4mGPsXirIKG8IfYHFTblVXt8zbWse0cj8YCuQO47T2R5nXs6QyP1Do
         /KL/PNAmlZ+LX7kZrFnhN5gBHTqyKGFG/Rf0Sqd1Et/oNjMXBhdckY/X/+I1D2sRtBgP
         cEgjnYxCrVqsb2+L8rsUuhgH1PPtaebi+l0f3Qc0QtyOWsz9q32/273dDWUkiyGuhVCs
         0WfFu7T5f0pi98KoDHfiii7SaGWtniXpIuo1SWDc4sl159wrIGo0f6Szco45dpEL64jR
         yV7RqJfYCRfd7wQ4ThnIk1MCdzK8M/wq3yQwf7OPtRjo9XSKfQw+DQVoEyauJDaugfXw
         48HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787910205; x=1788515005;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yFmhGdCQxjWoN38GCOuMwu32e/UJVZjw14beK8J5W+I=;
        b=py7tnpZ+XeYNKuOQLUPX0bkp6nenwEQcpxra7bag0zYdKkYXOMItztleXnWqRzQD7d
         lOunbO5iVgevxx4QtqTIih4CryncWvzAWOPEyc+evzecjA8ZxxyeiSugRnhOWuJYikwC
         zysK78aMmFPMaNYmt4ADWbV3k2+Mjvpahj2JYoACu7eZ+LAMiSpX/R5425rWQgXw9mC6
         rS0EIPKBYBXkyYzTHG7OpNYJevSqs0+EMKrD5EpetqOEQqVCIgrPs2XggxrsGH46Tw2z
         45hNBxv10gx936hwxGpDLKF7vyxks3z1+0W2MUmrVVDyryvS525g+FTU1arW85yWVWPY
         4rRA==
X-Forwarded-Encrypted: i=1; AHgh+RpEjKFihBU5XpbiOTWZ6M+snh5qP3STI4QrpN7RtWBmk5n07SqTByvBoacY/VrwwTHuQmVNwonfFYg=@lists.infradead.org
X-Gm-Message-State: AFuF++mSUnRqsjw0ZcZxAcCFELsSEZeWKwK4eeNpXF/WaqIfuCgeCjvC
	XiC1lL2UXIDNeSsxgrS5tHgRNY4Pv5ZbQfISgCnpUEIMOi2CygZVWsV1Ek75fvBiBAAy7ELIadC
	qi03jPUR3iznYYb9ARA5x5x+tSiB5eWK3yA98bJygwNX8Bss1XOy0ml79mumICaEWd/RNv6cLl5
	vf
X-Gm-Gg: AR+sD12wpRx3fUfesnRIp+jILW4bbW9UVGOiz0FKqMBZOpH/B6PmXIawQrfJrsP8lCl
	Fbzr7oOW76rgd+BT7tvfqAoPf0agSAv4noP9ur7efhCZkBecWonHlmaZnYuaNAP1V5kUYGVRaKN
	DfH1F7QS1pZ1xfID2gH1nwru8toIntj95D48C7rx2a3Nmmyt3o/kKLD7clEJSlrXsaYJQPoxv5/
	66PFkBF/rQ9AmNO3+gRq18VyaJiYgl8OKsiSYuzlFDfbWVLrwlhfbTnlWwo+6PJINtVG8EXKoqL
	3BmB5+Y2KfzoIMg6NsAcauIAz/24DBiwFFWgmCY0V44My4ob752swWNaE0Kll7dhm11lCzDBL1f
	l7e5KcD+qC5Ny33vnmWsb5XpueM8=
X-Received: by 2002:a17:90b:37cc:b0:366:10f1:3d91 with SMTP id 98e67ed59e1d1-396d0d92d0amr12237779a91.1.1787910204901;
        Fri, 28 Aug 2026 02:43:24 -0700 (PDT)
X-Received: by 2002:a17:90b:37cc:b0:366:10f1:3d91 with SMTP id 98e67ed59e1d1-396d0d92d0amr12237709a91.1.1787910204482;
        Fri, 28 Aug 2026 02:43:24 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f995e60sm4166331eec.22.2026.08.28.02.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 02:43:23 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 15:13:13 +0530
Subject: [PATCH v3 1/4] phy: qualcomm: qmp-combo: Add DP COM v8 header and
 fix register layout
MIME-Version: 1.0
Message-Id: <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
In-Reply-To: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787910197; l=1592;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=w0djGQrJ22uNXbxdy3aclwgkEvuPB5Z6YF5eRX8FWBo=;
 b=pvD1NQcrR0rGB+mMYlIFiZDcO8CQgv8R332CY2R52m/HylODwIvU5KMJYuQ0Qf8INQQUVqyU7
 UYK2XbfpBg7CXhDZY/l+tKLLRqstLDaZnK3Hw9xQAhu0xTi6g8rskq6
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: G9C9ClAEteVdRsMuhllRgt2xROazzw9X
X-Proofpoint-ORIG-GUID: G9C9ClAEteVdRsMuhllRgt2xROazzw9X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA4MiBTYWx0ZWRfX7PKe/dp6Fc13
 /tZvwR3gR6rMljz/2EFdt/Ix9pndTBPp5+uPd46cjSUsz5bDP1UB/QK/h7Yg8d0s073CFOM7jqQ
 iIHhFHjxyd1X1PrsvXPVPIKRBcs8d1Yg/RoA6ZWzDHriLF/gnijGGVc2zKJLMEbsifsgvk/VxW4
 MMavCdgHrMP7eKazGoLy8xBfXUi9DiUn6QbeyeKFO6vmnOZtbbDvVwzJyZm0VGY47anyd3Moqp0
 kQy2q1ZFFYzDZ2cl20e68xiDFVn4s0KZteVbgoj090TpzkNsRFit19ZCZTUMojjMhCCYpgGK4Yh
 h/z/x4zY3TxsJidYeyO19kQUH13Ex495Cr9qurFscAyCXxqHxaf92s/A8XmlTscLj7tKk/Ep2OR
 wnmEuWjtt4YBNcLVxMdl1pmUWIhwSDnBZ3o/FyRvcwRW1sfZaex1zMNqyViGl3mvulxL7uvSgaL
 w4mJ0ViQ7Aeri1Rfs0Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA4MiBTYWx0ZWRfX5ky9qEGZtxCW
 KVMcn2+qNIYHGSKvIFVdYaTqZVQSjW9j0zSki8pjqC3T76dXjjCFwlnqldo+GhkVKEOkERlMeaA
 Y3e3vre0JQ7N4rsSrVUV4ybw4iwsQWI=
X-Authority-Analysis: v=2.4 cv=Fpo1OWrq c=1 sm=1 tr=0 ts=6a91583d cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=9hqLRW_DAkAp12WW2ZMA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 adultscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_024326_967810_F693EA8B 
X-CRM114-Status: GOOD (  13.56  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Add the new DP-specific QSERDES COM v8 header file and update the
register layout to use DP-specific status register offsets for
C_READY_STATUS and CMN_STATUS registers.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c39ced168d03..4d31637f1dce 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -51,6 +51,7 @@
 #include "phy-qcom-qmp-dp-phy-v5.h"
 #include "phy-qcom-qmp-dp-phy-v6.h"
 #include "phy-qcom-qmp-dp-phy-v8.h"
+#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
 #include "phy-qcom-qmp-dp-phy-v10.h"
 
 #include "phy-qcom-qmp-usb43-pcs-v8.h"
@@ -318,8 +319,8 @@ static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_DP_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_DP_AON_TOGGLE_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V8_COM_RESETSM_CNTRL,
-	[QPHY_COM_C_READY_STATUS]		= QSERDES_V8_COM_C_READY_STATUS,
-	[QPHY_COM_CMN_STATUS]			= QSERDES_V8_COM_CMN_STATUS,
+	[QPHY_COM_C_READY_STATUS]		= DP_QSERDES_V8_COM_C_READY_STATUS,
+	[QPHY_COM_CMN_STATUS]			= DP_QSERDES_V8_COM_CMN_STATUS,
 	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]			= QSERDES_V8_DP_PHY_STATUS,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
