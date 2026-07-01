Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DA22C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 16:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dme+NaVz810ANGjqS9mjg23u5BWeOZBB2VzNllmpkqE=; b=MTpbHoBsjKTLdZ
	FOC1Ok3jOW6NkUKq9ADOdY6kkKl2pFLWADGNMfo67YTM0madOUbI5DkK6x7uNV9KfEBCXzMe99IfW
	pVCCS4w8BT3k+1vzrn0RvzZqmctey5tVf17wu3DIeOrVrjMzoaSi7GRn+9tcRU0GbGA1Fb6wQ0chd
	qw+O85OR4IUMWx8/6vPmMC6gtbsf3Fhdg4C39UhI7IddqrK++JyfiHDu1LW8GicyRJ6WClQ+Z9MEu
	Qu4BVTLlqfpKIfbqhlMNePXn+8O9G0aGinH+HGHLjALu/MbJmH6pPgKz736AV64AjeuFaIMpGZAfu
	XS7uq+4NBjJGhMtSc/rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9c-00000002alM-2uHc;
	Wed, 01 Jul 2026 16:51:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9a-00000002akM-1HdZ
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 16:51:15 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661GmomS1627810
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 16:51:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=mQA1MLuVYmC
	JM4wnv1k9JMDKSdRHRw9JwbkaWYSTWBI=; b=Ej5Xt0wFyAbaFoqJQZLpIovWyvF
	/guTk2rgClaNxQangJGj+2xMaDuYKaoh/1b4V/pZdMEesCOik4bS8MLWm/xxV5lj
	1kfiGvw8BWuiDvRHwk9+jC3w+XrO9P91rxc/fSXN4H53YgVZ3qC07MEZaeXYeIg1
	z1jcAWC7kyccUTOIboY1zOytH7RLHM4X1UJUTWigbpT59Rq95pB8PErubZVNLKty
	plEmGczqtGPD2wo34DbeZyWYXx8mxyo5B7yO1P+042cEuyTIFXFsdOtyLYS8fZVB
	TBArnvewJ9FTZLkjFbGERSaDYiOkBwAfPuZz0QDDb4lgZQGuDsh8abwFjjQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f563086r8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 16:51:13 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c9c26587e67so765849a12.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 09:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782924673; x=1783529473; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mQA1MLuVYmCJM4wnv1k9JMDKSdRHRw9JwbkaWYSTWBI=;
        b=Rqq55R7mLV5LS4sa7NiNTWcppyWB/iTYUdswMEVUmtuiGp+y5g9YW5uNnS7ewn4R1U
         1LJs0AOvoQO21V4p7OBcxhh25L54yaQtVUj+JkV9oW8DrmnkieppuKx0yNc8RCMgq8Is
         vK5tvlAzQzbh0xkS1C6VCrr6pAKHFZqW3Pl31jAa0HxgycR+zbZSVBhi/IHy6SsliL55
         Y4w7pO7ckspS64jQo9ONETAmfbYu/Q/vm2vD9ngH1biOays5DMBo5IBx5L7FmxS83Vxj
         +e9fVpNCFQy6JDokIICAiR8CUnfiWws6TIwo9qoPIAZJwAh4+2m2F5oYgMahlfGbQiiX
         8IjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782924673; x=1783529473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mQA1MLuVYmCJM4wnv1k9JMDKSdRHRw9JwbkaWYSTWBI=;
        b=gnmRzGIuvlmmuFW3EK63EuiOXP71PeVi45ykgCyuedpiOuK53wQLR6S8AUhpPJj0RL
         4NQZdukfpsTiYI7zm3kt1niRDQVKUpNRJspYyRbd+neKbAPAbf0jgZOBR43np+hWTJ1P
         PFoy9l4WhcqiuZomXwYHOcdthYvuC/n6nT4ydqYabuQUbCKohPN/g1eq2RiAjbn4HoAs
         BX81sVTMV2u3meJIkJ/xqaLCSetoKm/l+fSY3rOt1QZ6+D5s9aF35sGw6rTX4Tr47i5I
         yCsjvcgydUxTJzWNvlm62972Lmo+6w3pCnRYPYWydIuWHtGbADlJ328N5Jb21r4/PRp0
         kmiQ==
X-Forwarded-Encrypted: i=1; AFNElJ8EZkylyLa8mC+ycX1TjUc3Z9o/Z3oWGtoOcARdeMPxmmh4IdvKBJSSwLsqLynD937p9iE7NobBusc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHKJZD3CE28w3y/UyBGjS31MmwPt5UnZh8nbYeUlJcwUrHjB8s
	F7vii3j6CFvpKzacmTnQ0tgGT4mULkLJqN5KMIiohIRGx6JqQpdpOyBNGdvnhE3yk0ylifhmnzU
	w+Q/d98zs1GtaOQdNxL/CLu8Hr20vdeDqSzhcJRS0+FcNgf4tUEztto4Zi/t+d2njLlQh
X-Gm-Gg: AfdE7clc/roiNFDknUoR0sE5nCf29DJn36njiCZ4jgyimulNl4hW28O8HsfCjT8/9Em
	hs0D1VbKCiBoWj0Llo/6h3iJ2c7rxryqpMYtpgM0JZUJz0SrS1xhGwXIOg+uW0vnpe2hpbKzuki
	ROWiL02NAFIAfOLq4/IXL+lGBnMLg/D3Zun2qRTVLp817oaPkUUF3hohjEQiyGSwlDZJLQD+/B5
	nd7ozUnE+qtQt0Qk7Pdb6cjbVkL6sKhU8rBSlK2nzXLeiSpBxU2iKqNn/p9hSTfbtRZr0FftpjM
	1CqPmwv4ug2ePioLlX8zDC/L7819xbAdHQ7k0Mr7Am5sL1bY4tQxcLNrge/B8WbXnIU+02W90L1
	cyUOFLSjUGUqGN0ox+BGRqiik5O47VfWnu1lj/HAy/4ovJmCYbvbbjHUXC5cOZR5r34E5W1ttfe
	s/Zu2K
X-Received: by 2002:a05:6a21:7109:b0:3b3:3852:6663 with SMTP id adf61e73a8af0-3bfd2849453mr6618087637.24.1782924673004;
        Wed, 01 Jul 2026 09:51:13 -0700 (PDT)
X-Received: by 2002:a05:6a21:7109:b0:3b3:3852:6663 with SMTP id adf61e73a8af0-3bfd2849453mr6618050637.24.1782924672506;
        Wed, 01 Jul 2026 09:51:12 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm33038935eec.15.2026.07.01.09.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 09:51:12 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/4] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
Date: Wed,  1 Jul 2026 22:20:48 +0530
Message-Id: <20260701165051.4122259-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=JdiMa0KV c=1 sm=1 tr=0 ts=6a454581 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=ybcDLLt5cEg1GZjoCqQA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfXz/fC/P/hakB3
 eEtOqTOXHOysD7xqKPOuIdW1dO6hoAaXIwtvKbaJo3OhJicSBtsjtUzZYa3kNd9ZhD+rRjfekNM
 FqUKc3yL9lOhnEtOGIoTDnBg7zz0Mw0=
X-Proofpoint-ORIG-GUID: o_aBKir1UgJx_SsZ09FwOCKIPmGv3EBf
X-Proofpoint-GUID: o_aBKir1UgJx_SsZ09FwOCKIPmGv3EBf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfXygn/qkDoAOXm
 AYoppgVwJ7/3Oogdzi7ztTZdc1WH+Rf2HGbhGbst9wyAFmirt9P5PaHQC+mtcMCaxEi9UVGcI84
 SZvz4yKSZSrDcI8Cwe+wJoZVwxK7lhcqO2h9zbX4WxUO6MbSrypJMvYI+HLxWECE6+WnanQ1ehr
 ShvWmUxVUJlapakOc/HWalQmR4LtuMco2yhycuoNF8FQlTrsWmH86OWF/AYsSyedPmyXGMSZXwh
 1oTNDTFVBmhFKO/outWa0RUnrAnDGY1qsBixtQ+BbsC0z/a+ndbeoDGagz/AcCLmBvoKM82wqbd
 YpioQbwqrYpzhzzhfjc0aP1XB55swZqnYl6LNKvV3Bh42MKHOtWy74XjKdxP5sgj3dGkRuD6f2b
 HuI05K7i5VDLRht+xJ2/ivVtJsDlt018YiYXopzn9dEFd6uaq1CzhO6C/AILhYtUbQQyFT74n+Q
 69el8/PEYLBmMtguNAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_095114_354379_73DB4389 
X-CRM114-Status: GOOD (  10.48  )
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

Update dt-bindings to add Shikra to QUSB2 Phy list. Shikra SoC
has two High Speed QUSB2 Phys.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 449c2a7e5fec..001fd0ccc985 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,qcm2290-qusb2-phy
               - qcom,qcs615-qusb2-phy
               - qcom,sdm660-qusb2-phy
+              - qcom,shikra-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
       - items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
