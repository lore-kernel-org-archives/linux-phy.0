Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D30AECD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 17:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXacTgKH3/SvjRXxu2U7rXs3OSXU0LxBiXb4MQ0lL8M=; b=EgFNyP9w0MZGXz
	gRAMU5hi38mggJGXKGrHXGAuSiQTTPkMjX4+0FWYyJRHLAc4u72NJXdYx95nBLeVxnk646Z1TQjuc
	GuOKKJe4woRukoCQj+MxPd5tg8XqUpLHF/9tp0uc/V/MfpLkcIFlFIbQoprm7dQ9+tHhowIPp7t16
	5rj6oElwmnLs4eWfdeOjVX7a7dfre/YIsBF7RLkW963hYjx2vii6FNXPiu9BgIwzqXFyW7HLWN5Lu
	LplgbRfYArJ56mETYK2qXjOg1UYqtrAK8Tt3ZNhXBdZomAyZhFXG2YTqniWH7JIJeg7uMXw4KDtkA
	dcOzMNIJcJNnsxOjOumg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTf4-0000000BYRf-2bDG;
	Fri, 22 May 2026 17:27:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTf2-0000000BYQO-1d4D
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 17:27:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MGapWC1733113
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:27:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lqhBDm7fYqu
	6MvZpBtGOglNbnbUjw4oExZ0wnZT6Ids=; b=eTRw7IlsnPnTflsXgUIXt9mJ1aS
	VMQ+9LlouPD7KBhhgzaT9XHekdEG2oNxzRq9OfdrNhgYaIO2dwOwfTb4iN2t+lZx
	cIVCq8iTBkWOxzczU7X3o4yo/2AK0XiFYDAS/zcG1+OsvEaMfII7aWIc/4bCKEmO
	nJd8aEGmJiCFGINhP5wb/4IHePvPDlwb3mXIrwf7Xad8PwwtQMA60LcnBlRBe58T
	ZzBAJNKxYrvv9W2YV6PGgofF8qRSxUnaDWDOwBJVEWhg6JRFV96+4OLf7iOuOYFE
	4oSDp0J0CbWWNuln1VNR9p8QMzJFUZlcAqgOgELrbMT0yJYrSSLut+Wx7+Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eattq875x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:27:47 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c8510f91ce8so1413819a12.2
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 10:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779470866; x=1780075666; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lqhBDm7fYqu6MvZpBtGOglNbnbUjw4oExZ0wnZT6Ids=;
        b=PojPZiF5l0+fCzmZl+QDY2P2PmXt7snY5lVuvzr5Af/j/e+R6cAoWfesrcdyeuPShP
         OHArWbcf9vL8BX5qNPWalciKFUtqTjssgyZJPgBmI0+pTSVJpulNdGf7+PIp7LqpyUt4
         MLmgqsDeKih5btjc94yytwBuuGYtpdCiPCgOniSlqXoW1siudVHXUJsrzjRs861XUnV+
         gv2U5+WDMriWaWySmAoRduWq28TChMu4WfvNxNndXx5eKD1Kv6pJkQuZCISYuo3fEIc3
         PZTj7e7SulWEt38fjvbF8jAcqd40x8liUuf+6YZGPJ7WJZEtieVav7IyLKtw+5bS5ON4
         jlHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779470866; x=1780075666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lqhBDm7fYqu6MvZpBtGOglNbnbUjw4oExZ0wnZT6Ids=;
        b=rqGb+i4wXwVAH2t9rgvcfT6zDXdsgq/44OWtuNSTxiF/+LQ1mTQSBMOYWlEdgjkMp0
         vp20+P6MGNX3Pm5luPpd+KuMYSvKtU1J3OGbW1Ok8KPCZYHCjZYm2cl3BAZ4IFEjuUNW
         bf8OLyMck3kN73vo+kOVkbEI0PwBU45G+kAPdHoUPgxSXYkxRhHeZ10PnUgaWvsau491
         SRlU70SmWljBydMIFHyfoKFzUazCf67Ty3WXzZGVxiV+2Y3idknqxn5mbtw33BdY61EO
         njsuTq4DCwG7baEN+MV065AnBVKcy7LoZSFlO+1QxThoLUWeojJ6mwMpcc/KGiA7pydk
         gnYQ==
X-Forwarded-Encrypted: i=1; AFNElJ96ufwY6gWtlFYWyL1GpMFiGI/JfTVZWyJFizB9l2tQxBnWxBpKAyNkp1OxX5X/+U2vfJ2baS7dc+E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxLjoyrTK1aXRg9t45kjOUXQCkcSPp6vzBurSoUGEaG0KTfo4O
	KbY59GjBAaiz5VdNwB/r5bpv/AM7m2AYRfzM+64KuM+tZfBfTQw0dT4lN7WudpxLi80lhiH49LA
	q+3HMLNl96xDu1RETvtLUy1Wp7TZBnf/U6lByeXXN0J9Qds7c8yiPaMsob51S9KpChm3a
X-Gm-Gg: Acq92OHt7BTYwYvW1eWFHanmG5MnPwNFSJHOqfEZEeZJKscONnNmKdc15hs5P2TKgmw
	7XyPhxbC3bQ5cFrdyj6q3piHtq6Zpm8VCMtT9iDenWFLfr0IGCgy+64KeZdoQNRQgzrmZZFpLb9
	yCTxVVU/5qxdny3RaslQZv97bZisr8M3QvQ763IEZ7xnOTs1/kyhlitODbb/NkZ6UIqSInISOkB
	PrvE+/uOqB4Ff15I9eO6TreKctKHEIIdblQi3/XTLEvY+Vl/OeAqjzYR03nHLs0na4zDml62Prd
	7RABfMpqcwBlBkR5GMe9hzVN5f1y2EcRMyW7YR3EMHlF+LpDCMxeCf4pme6vYiWEQVpbaROn6/C
	ujSk09VVrLKscaS+ljz9pUCizV0MDnZIO1CU1VTkXesElBTvAjU4xMw==
X-Received: by 2002:a05:6a00:421a:b0:82c:249e:a85b with SMTP id d2e1a72fcca58-8415f155bc1mr4845097b3a.13.1779470866326;
        Fri, 22 May 2026 10:27:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:421a:b0:82c:249e:a85b with SMTP id d2e1a72fcca58-8415f155bc1mr4845068b3a.13.1779470865852;
        Fri, 22 May 2026 10:27:45 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84164ea09a9sm3045693b3a.31.2026.05.22.10.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 10:27:44 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH V2 2/3] scsi: ufs: qcom :dt-bindings: Document the Hawi UFS controller
Date: Fri, 22 May 2026 22:57:15 +0530
Message-Id: <20260522172716.820490-3-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
References: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE3NCBTYWx0ZWRfX6B5N4kMkCeJ2
 K4JY5HqybLNT7iu6sFVah0iBkWJtpI/Zo1fCYpaQqpprdwEhT/kbbKXyLXg5Iz6lPf02aJ3bcd3
 PDpfyiHVxPvRiYdMU8V6IMCxusk7JtkYBaZ0YrJWAUTkz2RXMoQsmSdlEhw76ZYVxWaMuFBY7/d
 rzKCa1xet9KmOoR0cHj0yA5Nrmj1y12jzX02v8YDWLzzhSuNR0Spboj3rv90Y3w4HxIx3A2fYCv
 0wp0wNnzsZBZasR0792pWKT/Td95ktGOaPgUNe0w8meKubaFtAPgQlomLxxBmHFnyD0pIUwrf0G
 rTjVm/dtVxDVk8+NzXxGW7w/xU428dD6UX0EVkq+J56FIIT/a1+WkZ8dbNVe1R4tC5LPEKq90DB
 kype1XZz6bJ9w8+iYDJ8TOB9+WRz9EeVLZWFGsi6XzapERB+6RbMuA5YrGvBgKkLrCfkNELLlHY
 +I7yEfErd/c3kgoRSZQ==
X-Proofpoint-GUID: wG7uWa7fhCkGnDHzPsov2GokSyPD9piG
X-Proofpoint-ORIG-GUID: wG7uWa7fhCkGnDHzPsov2GokSyPD9piG
X-Authority-Analysis: v=2.4 cv=S/zpBosP c=1 sm=1 tr=0 ts=6a109213 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=dkR0I6OD3irOzcp_LXMA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_102748_550918_4BAD17A1 
X-CRM114-Status: UNSURE (   9.35  )
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

Document the UFS Controller on the Hawi Platform.

Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
index f28641c6e68f..3de00affa4c6 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
@@ -16,6 +16,7 @@ select:
       contains:
         enum:
           - qcom,eliza-ufshc
+          - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
@@ -27,6 +28,7 @@ properties:
     items:
       - enum:
           - qcom,eliza-ufshc
+          - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
