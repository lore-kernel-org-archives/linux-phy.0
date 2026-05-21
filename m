Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2701CD5BC6
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 13:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzMJn/FOC8kQH3UMyEqR0XkmcbBAGRFLYhCI0QMxGCU=; b=ROJi8OVuCl1RlL
	N8G2rDYk5ICf5dlOyNY6/Gg2E9y1dxbQDSpmST1RoOkmPLnob1g2gAtUdP75DUymTMb3/uDFUAoHK
	bAoby3/+rihXhuU4y2IDoj8+oecnlfNk/hRb6ZfQMzQ4n9ha+jwORkeXQIvrHRA1oa1OTkHhOpKX9
	XojSvCJTH6iatXMKg8/Sq8FIeH2NvWkXg1qzLgkzQty96nCy0Qi9KZ3zm8BFXZJJLcaiTeGYcIzS8
	w6t3CAqVtSVDOjxbwzAYA/QwGEzMhncq0UB6kaHM7wvN/fg2tZlPt85TZKdGMx76jIPEVI5yiA2R0
	h4oR+wWdbFQQezDab5dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ3Wt-00000007uMt-135r;
	Thu, 21 May 2026 13:33:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ3Wo-00000007uGq-1x6Q
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 13:33:37 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L99na8517710
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 13:33:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IdH3GzdWYwa8Q9g94MkFFyBEguHq6S6gLpwxGL6T8Lk=; b=N1tjIUmdoMUeArtK
	wv16fhVTlZgeOgT64/QAU0TQmUtrNWAI7InzUUnlZegw71TxbGXHq7q7pcJAVJic
	K+uivRbB0JV3lwhVzgEMIVAhMpIHP/yc0ZxCdMlQyn5WxSRwNdA2jyGpTixiRF6i
	cFC4rqskn3u+LNMH/lA5F9W82UlvMVtOgzMoj7jJARaIWd6nCX4wZ7LrWIjVKmOF
	BEMuY7k6XugMo0me3LP4lZMIAdMH5lnMGkQFCeO8bNesQgQ2uMX894t8qxqXYUvW
	14kiG+bSmYr0GgzzS1+c18Xw3CWKjK7KFzuaXV9G3c29Tbsu4wR0GhUA56CM6No0
	9xSHBw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9saa2et9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 13:33:33 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b99eb06178so149005945ad.2
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 06:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779370412; x=1779975212; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IdH3GzdWYwa8Q9g94MkFFyBEguHq6S6gLpwxGL6T8Lk=;
        b=KKn6qaeud88cyCUf9dAAhn6oyVg7WBHGOSvqsRVjJeLaOwfreVHulvRevno1aRHSWz
         0NV+aB4UMmjTQvz9iMIio/+t7c9+VddVRWABqfnJN3qZEcsSl4sHEgprmukDrk6+cJGS
         V0sfuakxPJfVPGW8d9LI7mMieuv/BVEax3Q/IWmmEd2yD/xJxddanSokQxFchn8zNzxi
         hb3thcRZAxuDI+JWXWE6eSq7zjBCHCKnGKPHAfMZcj7l4BSa0yT9iunROONdqDmn2Y/8
         IDKz7cERiYelWbJj8vsfEjnSCVPr63vprFrgCYS4MPJCQrtQ+QrXlqJXfYJBfMvrEjz/
         v+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779370412; x=1779975212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IdH3GzdWYwa8Q9g94MkFFyBEguHq6S6gLpwxGL6T8Lk=;
        b=EV0Do4eN3oYcDpiDqk0aj4mFYnZBmb0xnpoJtym4yoAlndrpDb8YgpeElgOvNLdIc3
         gVai9uQd0QE19KvlHf/RBG4pNg6onSvYzU71QasCOFXOI/IdwthItAzzyxY//aTykiaS
         K98HU150lZs4rf9IS8J5rEoem0wyGeShhhUuATVI5pQkidFNC3NvYwy7yZMMQT1r+W3J
         s55gIuYRGnEG7w8SRKtl3lFqI/+/YVTzPHFyAgzraJCWpX9mpHIZW/3JFTcVoL0buDI6
         ETsIX8gXFyZmJ+8x/e2sKB9wfrbLW+L6Ksylbmfd0QMoTtACQUKN+D+n4Xbds3PSOo8s
         Uklw==
X-Forwarded-Encrypted: i=1; AFNElJ8NYUN453im6tCLcFm05sIZ/jRCfXBSVVaQDvghsl1X3molsuN8CyXatl0UGahtmX/L9NJBA94T8t0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/YmfqqkhWP9x8u9Dn4oaMT7eqNR8lM8GTOxRw4RosAlEWZ3L5
	xm62L0wo/hnK2zYaEWuttdURBfuAPuNTB7SptnR8g110HNKtwd2S0ndzABE/z/8clWdLI6CgBQ5
	MtPKBy41jk6F1UcGezIHkMt9tKoKYL0ccVU4apDGIPg4ctGNXSRrglvt6nawuWzTnfqGx
X-Gm-Gg: Acq92OGFl1JagUkIEZcc0QmectT/xDNicLWt1KAWlUEocZ5tFMF1gIy6poG3vHghg2W
	+hWRkBj7BFTCh3CsC2xXzveJ+4RMARk7pwHGHX/rzjiAlvMBN11AId/HlrDcBW5zYrzm3fLKeBF
	o3FjKevsmrXkOFe3BikPalGNxWL6MXZbQByKqS9rchP68i5KBxAap9CsUuFMQU/BsjvHkMLtwvf
	6fg49Oi7q9Z3OvqhiBsnbiItIXR01JT9LLt6aovvna9oRWiJoUtWcEIt5cNWOJcyaljlPV9wMtH
	dLwY95rKbuohk+Wv4/t+y859SnQdfAo5o8BWPE+RMAZ1hCIzKMLuFGh1JhDuiQGfXJA8bC+Yglm
	RXne0N2Rm+bYsCOnqIg+j2JpPJMgQzCfBwIbDI/CT6T1o028G
X-Received: by 2002:a17:902:da89:b0:2ae:ce35:2686 with SMTP id d9443c01a7336-2bea32d02c6mr33845105ad.5.1779370411827;
        Thu, 21 May 2026 06:33:31 -0700 (PDT)
X-Received: by 2002:a17:902:da89:b0:2ae:ce35:2686 with SMTP id d9443c01a7336-2bea32d02c6mr33844565ad.5.1779370411223;
        Thu, 21 May 2026 06:33:31 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bea9172520sm13349495ad.6.2026.05.21.06.33.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2026 06:33:30 -0700 (PDT)
Message-ID: <1712f500-d4a9-4387-947b-b02853484d21@oss.qualcomm.com>
Date: Thu, 21 May 2026 19:03:26 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        neil.armstrong@linaro.org, vkoul@kernel.org
References: <20260519-shikra-dt-v2-1-c01b90fb4395@oss.qualcomm.com>
 <20260519113234.BA75FC2BCB3@smtp.kernel.org>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260519113234.BA75FC2BCB3@smtp.kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDEzNiBTYWx0ZWRfXz2uloxXMKyG8
 pwIK5n3yqIZfWoRbYmTUC1HHchMi4oeqX2P04y7gz0ecVjvv8/WpYTPpJYlUwr/qq1lu0h1ICce
 ADLEHtKP6+jjmLxGKlFHSC6OuEt6VcSLh8t/5OmxT3nFzixuiktThb4LKYlC2n6lQmscC9XMMU8
 jb7IBWC4eVxTbyfyGBiD2CpRfsi+1VTfoMYROlHrnmkNOJIC5lov34+4w60xdpvIFP0Mc2f/qOV
 FqnXAt+uS8VELd9WkJPjeS4dkNKQrTQN3jLK8bex8FJYgTiN/o9VnbU0Ci0eBsHXsVY7GHfE0VM
 XlXE2fz/anfkh/eRLdVEww6603z61eNJd3jWWiwXmRPTHADo0N6FpmV9FL580nYvpU13bP1MEcq
 3ZZ3KdzkXYUPeNKBH5CzgQt0XaGpCt+AwJ52zZdHZOcCFoa14VTI7sjNfW5HParjZo3phbLT9Or
 0yV/teQC3oWqPzkXmaw==
X-Authority-Analysis: v=2.4 cv=Qe9WeMbv c=1 sm=1 tr=0 ts=6a0f09ad cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=2bXR4lxtNcP_XfbIfakA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 58g5ZE1R3nkZK8xsDnAlfGQKUBKksv-f
X-Proofpoint-GUID: 58g5ZE1R3nkZK8xsDnAlfGQKUBKksv-f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 phishscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605210136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_063334_531827_D959B0C5 
X-CRM114-Status: GOOD (  15.45  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 5/19/2026 5:02 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Medium] Device tree compatible strings use generic abbreviations instead of specific hardware part numbers.
> - [Low] Alphabetical sorting violation in qcom.yaml.
> --
>
> commit d5de85f1dcdd73430dd4bed54ebebe0837ba7f5e
> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
>
> dt-bindings: arm: qcom: Document Shikra and its EVK boards
>
> This commit introduces compatible strings for the Qualcomm Shikra SoC in
> System-on-Module (SoM) form factors and their corresponding EVK carrier
> boards.
>
>>      Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant and its
>>      corresponding EVK boards.
> Should these compatible strings use the specific hardware part numbers
> (CQ2390M, CQ2390S, IQ2390S) instead of generic abbreviations like
> qcom,shikra-cqm-som?
>
> If the generic abbreviations are kept, can the schema map these
> abbreviations to the specific part numbers to document the ABI?

SoC number 2390 corresponds to Shikra, so using shikra-cqm-som style 
compatibles looks appropriate. Same applies to shikra-cqs-som and 
shikra-iqs-som.

>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index af266d584fae6..7c5c5f4fc30f7 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -968,6 +968,24 @@ properties:
>>             - const: qcom,qcs9100
>>             - const: qcom,sa8775p
>>   
>> +      - items:
>> +          - enum:
>> +              - qcom,shikra-cqm-evk
>> +          - const: qcom,shikra-cqm-som
>> +          - const: qcom,shikra
> This isn't a bug, but should these new blocks be sorted alphabetically
> based on the root SoC compatible string?
>
> Since 'h' comes after 'd', could qcom,shikra be placed after qcom,sdm845
> instead of after qcom,sa8775p?

Yeah, I missed it, will correct in next series.

Thanks
Komal
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
