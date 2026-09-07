Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB14BC79F99
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKKlNtmobX8NdeLdevfySdISK03NOzFHtMMRqPWV2uE=; b=vp8tnJKZ68ikQL
	1LKdgJBYFjVGW8hyetHigR02FBK/wX0Sip3ZUtLPxKvKthORWknZDPhjZGJgE7kthw0r+nK4zqZLz
	626FDq1J9Wk9v7nbZFg3iwbWH9A+TcjaDMbuXHPlW4CEw4CH0TfvDuOQ6PwNBnXHe7ryEoeBLbfsX
	GKn6t+c01J6EZek8KtLywLzs6590BeqborV3vFJG9NftvDEz7S5x4Yt6/T4+oyo0QaNlQG/iXcC9U
	ZcQISKiPxrjmMVVt8apVVMHmQKHUI9uTVvImkyj61XygJEjEnBDhtAYszZjomN93m715yL0iJocMd
	rCiSZjTDZYuY+zM0OV6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X9K-00000006bWu-1qmN;
	Mon, 07 Sep 2026 11:04:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X9I-00000006bWP-1CIZ
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:04:29 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 687AnO2U3777603
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 11:04:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	38bxwPm2GMzpyUAZBJqwwwnfLv7xHTw3haohKL/4joE=; b=K3fbSxfohhJlMHpo
	k8uur8kfctYRGgwA02lzfNY+DAmcF8npQlO6uHHixLToICkzhA6F0t1qgMrb9BPW
	hAGm2Lq/lzwV0kre+/gTsj0PIx+LXosFAllpr8ddJ9CeN9VZt20hGeiVjGqTwGYj
	02voqwAg7M9R2NY/j/DLkRQW+kU9tIdM53I7nNaJ+rwmy8DiujBhuS0ilhIqnFlA
	lVFnC+CC4RG6CZLP6G/n18ROv++80pxZUTTJXFJnuG3HlBYHG27NP0QS5U3MuPPB
	//odSVU9DSva0EirkQKHD9mbFg2GcR29Fnhy9SCgz5YAztUk0RcMSy55YZcxbVPe
	Dj+1sg==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghsfygrn2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 11:04:26 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7e9f6a49e69so5561146a34.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788779066; x=1789383866; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=38bxwPm2GMzpyUAZBJqwwwnfLv7xHTw3haohKL/4joE=;
        b=h5Y1E52CijnGbwrlMOvOK43wlS3jcWYq1bm9QsfAtIMB4IfXyvrHQwyP9XiEsKDuTR
         9jgTNcLHTRhXs5j8jNYK2ucZDV4DvuQYTOb4qyel0SVnxJ6XB5pWI3/EP+NdG5BpYRtK
         drrU9vouZeCmHkgwzT8pbWhaRhLkJNKmLIx3ZMap2e0In/tJyxy2bOnU6Wyc9YuJifyE
         E8m0H3VJE5q+ijO3tuS33X5MC74TH15IL58+aEJXA/7yncPp13ePS3LYaQOfln0UjYMy
         6nPnOFK+bsFq2A5ml2JL6vw2v4wuh8ThnAJfuG+OHnGCKmnJG2jkoaeYMYZlaAQB/Aqa
         fxHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788779066; x=1789383866;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=38bxwPm2GMzpyUAZBJqwwwnfLv7xHTw3haohKL/4joE=;
        b=rdMeYWJOZljPJp0jz2g6mzpHa0c05wpt0dvU3Q5t/1K144nFYxftiBV4CwLG5SkPaP
         l4xSzNOroFQKKEXQ+DPxy9FMdBFW97UFZwEJ0i7225DWmfVCRvAHw/aj+BR0aLN5q26S
         +Gu3dnWOFq41TxrMmXzvv1V9AcAJFP2RpsDN8rrOVT0v3MKOgsUoOgAHnH7KiORdnZER
         KSqV8sy6nYsjrpM91CEZozp2hvhvc/2Z1vNoaQUyfL4UxOyMK+xlsqYRXnLokmvSsrA7
         xKsNl/u7e244SBtgXLGVrYbAcS6ihsY0V6MXEc8maaUgDwxDwobInF+TbDB0un3cet9P
         hOCg==
X-Forwarded-Encrypted: i=1; AKwUvBxj1ieNO7C0L+nKBV9m9gQBLOxJlyTAdqWU9Pr04yddugj+dTKEklkntNOle7xQxx4ybmTaa9Ri4BM=@lists.infradead.org
X-Gm-Message-State: AFuF++kn61/2aRR4m0mp3BP6VdbF4QlhJ/A1z7lhwuH1lyxnpmLd8Clo
	HDepEjM6OhGE3V+14CTBKGDKBrE7OyQp7YScF/IZUnMGIt50ZKeYsRF3pbBr2r2JYjjCbhY3aZH
	4HxVSJL+t8kAXVeSZDDw6w/34ShgqpEyM+Fgn+Rc5y5E1N4mvtUMf8oUzEujky1hvZfpGW3LUpe
	fR
X-Gm-Gg: AYBFou16BsB/k8w2aMX3GBURHklHao6B+QUi4oe3Q5BccwGm2up9uRGpZXTIll82oA2
	L8Y7yV/SZZ5qDu01/bn5T9TuoSFZzqPrBns67G0ofdhI6qOnpuUwKEA4aT+ZBljFGRw09Mdt8VR
	ORQnEzkrE72y/DIVVuP/RlG8WeuVdZPD20JFvmblAHytqsZZJO5CtiBfbNNJ6+e1X8VHJ3aPdtq
	4zCS9K+DV9XkyfBuGYAEjH97x2aYtN8PzL11Ef4vfT86672qxsZiXD+BZG+e0AFBDGo3IueGTuk
	3gfanoM1kGirnVj2D+g+pzRg7aR0GS7VW9bTROnjaFcDc1OanC6ktbioteCerh4IMFO619sg9FY
	089XSQBJPxqMq6APWD+FLVRdPKSGH
X-Received: by 2002:a05:6820:2017:b0:6b7:83d6:2929 with SMTP id 006d021491bc7-6b783d62f60mr11389788eaf.44.1788779066099;
        Mon, 07 Sep 2026 04:04:26 -0700 (PDT)
X-Received: by 2002:a05:6820:2017:b0:6b7:83d6:2929 with SMTP id 006d021491bc7-6b783d62f60mr11389746eaf.44.1788779065713;
        Mon, 07 Sep 2026 04:04:25 -0700 (PDT)
Received: from [192.168.1.11] ([103.211.19.41])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339ac24d7esm43139397eec.15.2026.09.07.04.04.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 04:04:25 -0700 (PDT)
Message-ID: <dcb2f3a1-5fd5-4ffe-974f-4b3801ae3bbd@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 16:34:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
 <20260907-glymur_camss-v2-1-75f7982dc983@oss.qualcomm.com>
 <97360c1c-f573-48c5-9917-4bbc34ad394d@oss.qualcomm.com>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <97360c1c-f573-48c5-9917-4bbc34ad394d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 43011rzndBLlLhwvAEZUvyJXjRvzYw_o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDEyMSBTYWx0ZWRfX/8n1q/mm9cUr
 gPpv0C+1bVs8OPjiKRKDsEUEwd5XsZw/Vb4BE24vNVf3PFWCbTV3RFju2WmLlUviLd/5UGi7mU0
 MYQuSB2nXjS01RJWr8EDuSEXNl6HDVR+817kiSxca4r5RyWJyQUG24arVNMBq8c1G2QJ3scRBZV
 Wt+QJWmXuERxbHL91KWV98jbux25qNWMKwUopTt4uNTDEE4fndI0kt0s5CJ7JnhtqBEG1JfVPl8
 3NghL7LYU+IcVlCmWDxuCA0d1DB/48B/pegd7ulx8zDjv+FeCat+SZHZM7r8j2HZsIOHISKZH4z
 S/9B7gXQBrzGlz/8s4MzZR2/U3WAdevf0CqRxshlxWQ0rCVfTwzWlW62n4E7g0r6XtMHDPuaCfo
 8pEjcwh5aaTBOyekcwOGY9+lLD3DfjTi8ZmKFuutKahr6onyJ3ojXBriGstEM68M8p0uJDXSJkN
 5Fwtdybz6ou5Vv9HavQ==
X-Proofpoint-GUID: 43011rzndBLlLhwvAEZUvyJXjRvzYw_o
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDEyMSBTYWx0ZWRfX572hj8zPjaO7
 H0f+NEPj0JwqCfxLwynr6koF9JsB/odsMO2DFv0L/l6IsNJ1P0JoMUO0fPfdwI5vOB0N5NXK/tT
 x+cECKb0ONyrjBuc1jMvzBMe84rERrc=
X-Authority-Analysis: v=2.4 cv=AduB2XXG c=1 sm=1 tr=0 ts=6a9e9a3a cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=HcLy/BXbbKFjgnJyaMb84Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=Tf9iwjJDQdcXpSb9m0EA:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_03,2026-09-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 phishscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_040428_440070_8A470CEB 
X-CRM114-Status: GOOD (  11.23  )
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



On 07-09-2026 16:26, Pankaj Patil wrote:
>> 993271c42fa063a82cb0f6edd41e87b30bc8e109..7ac944974849b99abd982b1544ef39fc32e1f21b 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> There is no such file as qcom,x1e80100-csi2-phy.yaml,
> Same was pointed out earlier on another patch,
> https://lore.kernel.org/all/20260722-literate-nondescript-seagull-cbdfaa@quoll/

This patch depends on the CSI2 PHY binding series noted in the cover
letter [1]. The prerequisite is also tracked in the b4 metadata.
The file lands with that series before this one is applied.

[1] https://lore.kernel.org/all/20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org

---
Regards,
Nihal Kumar Gupta

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
