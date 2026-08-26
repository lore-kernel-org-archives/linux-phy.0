Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F85FC5DF97
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 09:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XplpASoZc4kSoFYHMUXG4yrREYQM25n9Q74CNwF9v50=; b=XeMJxT0QRa7Wed
	1kTiqfQYuTgJHbEe28nd2HLiOMzltrBG99tDWAbAfllDF8iYhBOpXAWG4it1rKVpWA7MQ2Svr7+uq
	FMWlnLtrJJQMMk1yj9hHWIMQPaby9wX34pnkjrNRgAvHnWT+B/dUjih/HJO0rK3MvwQA99BzJJ0T1
	eWvcO6Gg+MDIdDsPOUwzFyib7+RGdt1OgYtNyMvLV3OY70j1R89IkybLd5JvD9+1Bdfes1pEHUTLu
	JGa3ZEZYBHUKb10Gk56MfGvPvewuaWZLB5rtxS9OvR8hgf1730y0HrZIEiiHkXLzrYD3CH2YAl0b/
	gIiZ4cDtrcUn5auBRgRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9e3-000000029Ku-0dn3;
	Wed, 26 Aug 2026 09:10:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9e0-000000029KU-32jO
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 09:10:06 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67Q6S9Ks4190135
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 09:10:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/67xIR1QaNXv4zcrkqRbXir482ph/0rua1g9RHT4gQs=; b=I6P4q7Pj6hK9tYdX
	8cnqnfwuHssjybjT50xZr19g1PygTMi1NrnLwyxdSiiVhmsfv8oJtNFlVE5vZFp4
	IPq2CRFY8LE5WKVEg9fvUtEWGgK/mqXx5oh25WUByyLhgIkWZEJqQ0dT0bpX/zFH
	u8aJEJm9CM4SR6oH60b/A3Yt0JjFgaqZ87WIZvIZy832mVc1VLvb6A7lBSi7lgke
	wMgXnw0ta7OxI8We8t0RDoRqJ05m5LQQkDrTng6V1eHG2OlUhASB4iZwCvia+/a6
	LLxdx2nBm1fPHcuEyQsjXq2rqXZqXhQt8ybifYV6joD82WsEGTgOx62TGtw7OGQt
	uW/8/Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g9cgpuxu9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 09:10:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-9349ba88188so16612985a.2
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 02:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787735403; x=1788340203; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/67xIR1QaNXv4zcrkqRbXir482ph/0rua1g9RHT4gQs=;
        b=aX16oBbEq3x2K15vYfr7KgQUXHGbo4Yx1CYA4GLhcGrpnW3n5Sanoc4WUG5wrMjRew
         WAhAWjwtFB9bcIbk6xHInn1IFh6Vn6oRa63CmXFBUoGEWTtXZS1oWYyVB0ztkBN47tp/
         jzMHY+Y08q2Xfq4LJ9rbv3024byg8eSoAXfKkuvOLWdKF360Qzf//y5u7rkd4Efwgkdn
         O11dj2v6FIa/4WdVdocFN49JxzI4ZyP/+EUU/Tr7tlhuuaIdemGK/pKA9VjN87DVp872
         Dz+2NgULUNUcwSarEj/Y7HrQ6AMmzhtxZ/he0inAf/UFBi1BFI5DBIgtEkX5pn08Kv/B
         hcyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787735403; x=1788340203;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/67xIR1QaNXv4zcrkqRbXir482ph/0rua1g9RHT4gQs=;
        b=lXRwwZSSjcQv2zmbnainugy5LZODb7OEVAf59Kypw1s0IOzXVyWrBcUY+F24NPKGKs
         9aAHW2nRi4tBgWLjaoVldJwTfZQ0AqcjoPfp3cIKIQF+WumEBtE9Vka0vOJonG9GnucS
         rLK61508wHVYDtKXQ9yu3Ic8SAME8I+3X4MZkL+ymxzQxrmlwuW/l++yFPzNsPgbkMzP
         ab6h+f11gUc6D1X+ImeId+JDBrXYFCGGFjEtJ/KbsyTkMZYFe5fIVTlmoaMYhhf6EB27
         gVkvH9EY0GCtyp5g39C+VinpO88MRKVjAO6MssU3A79T3XaG9CuCxJIasqAspOLeFzuT
         hNLw==
X-Forwarded-Encrypted: i=1; AHgh+RpT2q6wqGg0uYUy9LJZxXdoHzVIGNpLFT4aFHi9MpXoRw+H3gp/0RbQrMH43XtVxjEeaQyNws5P+Tc=@lists.infradead.org
X-Gm-Message-State: AFuF++lNTWRQ/1z8uLxfYQ1oalzG33c+CJqG6DNBZvSLwDaZGULHSa97
	cw3P4RrUf9gK75JaRBCCHNj3R0poGtAQIyUqSjKg71ix4Bk615K9banqrSdgE+z8+jle2gjAYZD
	YcLKUQRGwr//l6VYW2j+vpiPdSEJduFb67xqbTNi2RFwvBYqtfzZ8L0tFnMZ4PtdRqF7G
X-Gm-Gg: AR+sD12ck9x5JzAQbax0mZQXhT5LD7p/Ji1qJXmcogNpYzb8fz/LpfJyhDyyUmFdSNc
	Ye6KndFUBWOs5wCvsNyqq5lE+CIt/5PHmFhyJaWMFYmtx17XtkaDc/HcV1chhSBbfHszDl437ZZ
	Q1Nog+8HqjEcAGNm+9G4Vxe9XZwtRnFb7BwLNBl2bB4HGI2uhN7MMnaQskrlSKfD1F9fIGKIkub
	IiCl7yaalo7u5mjdqrgFoOWhZZRjHbBemCpjTCgqTuK8ZZlojRZicTvYu2pqf/6yd/Yz8q3cXs3
	qJjHSY5WIf08Ak7enOoSj/sECxbitgYviOAdefCoNCqv4LcjmcBL4UAbD5fypyyldpMcOThsbG9
	PzK2FtctfHkYcokJ1UVkfiiBz
X-Received: by 2002:a05:620a:29c6:b0:930:a08c:cf9c with SMTP id af79cd13be357-9378047c47amr325232285a.2.1787735403065;
        Wed, 26 Aug 2026 02:10:03 -0700 (PDT)
X-Received: by 2002:a05:620a:29c6:b0:930:a08c:cf9c with SMTP id af79cd13be357-9378047c47amr325229385a.2.1787735402629;
        Wed, 26 Aug 2026 02:10:02 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c250a73041asm429028266b.28.2026.08.26.02.09.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2026 02:09:58 -0700 (PDT)
Message-ID: <2ed7390e-54d8-4658-9c61-1892cb927942@oss.qualcomm.com>
Date: Wed, 26 Aug 2026 11:09:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Check clock-output-names count
 in the multi-PHY driver
To: David Carlier <devnexen@gmail.com>, vkoul@kernel.org
Cc: neil.armstrong@linaro.org, qiang.yu@oss.qualcomm.com, mani@kernel.org,
        krishna.chundru@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260825225729.230493-1-devnexen@gmail.com>
 <20260825225729.230493-2-devnexen@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825225729.230493-2-devnexen@gmail.com>
X-Proofpoint-GUID: Po-5Vaj-RDotqEXiptwbLSiIbXkGNzAj
X-Proofpoint-ORIG-GUID: Po-5Vaj-RDotqEXiptwbLSiIbXkGNzAj
X-Authority-Analysis: v=2.4 cv=I+NVgtgg c=1 sm=1 tr=0 ts=6a8ead6b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=eT9KoEPgEedj0qRXDQYA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDA3NSBTYWx0ZWRfX7Xe1LrpbSKj1
 ygS1Ci+aelHPONJ8jJHVt3F/6cfgl44Hn/7mhmXCe5V2MY4gUf5nXwdDX+UlulyRkfmBjdTRDBe
 ViKgDuM3NMWEynb/XZNaPLUbr86mTSdwQBWs+dTU3ktP8cuq+cv1rSdk0NFPPbqHW4D3jQe8y6m
 fw0ELzouRTVZh6i3VqWAjx55HN25yeGGVSHQhMMrwvIwGlenvVsunAKYAzQ3ZRMhwPPX6ZD22/r
 UwDrxCk0OiaKdCc/nT+eAc2ED0nNQwYbl10+WJcRKR0IOIhBCEE52Wi72Vgl1biBTXKphSUJi8x
 DKwyJvOGmx5R161KHRWQ68wPxqWW6ig2KOmAMfo+7GSHBNdGQFQTK+fQX2N4t0ZboVH6GoVtsOq
 sH273OHpOnJBMG23yAAQMHqJXFvjlBSkMHJrTU49yiB96rFwklQ31yYFTz4tLz0B0c4C2yLrYMW
 EX879FIquC1ukSd+ZiQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDA3NSBTYWx0ZWRfX13ZSQfh5quxW
 WXe1dMJVNdzxggJ2IjYnlqvq7sfjMyIfhgh6Z6YoT7qrJhW1mCmwCs5lW9xfB9ZQYWY/duzGqtP
 HyxpULAIlZ6sD8yRDPlYtzuUrE496kQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-26_02,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608260075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_021005_017076_18B63442 
X-CRM114-Status: GOOD (  10.77  )
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

On 8/26/26 12:57 AM, David Carlier wrote:
> of_property_count_strings() returns a negative errno when the property
> is missing or malformed. The value was passed straight to
> devm_kcalloc(), whose overflow check rejected it, turning a device tree
> problem into a bogus -ENOMEM with no diagnostic.
> 
> Fixes: 1781be3c8a5d ("phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver")
> Signed-off-by: David Carlier <devnexen@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
