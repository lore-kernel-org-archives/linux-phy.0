Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C486CD5BB4
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 14:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HChDLW6svdAXZGLL34nXMvAQ4lJotxNLQPVTC9UHKjk=; b=MCaezRpg00vApA
	KBXcSRHO9lNQ/mGfZAaJ5nP+F44lRRbSJu3hCJpwZuePp1dLUsOIfYp9Y3FsFjcqN05MhFTp3uvO7
	Ts5P5aDQJUq6kvkyBb3o1L5CKwkDs9z7yMZlJtMhE8YB3Xi7CLTsGyk3lfSWs7hBePBb67TUsdtEo
	37tBsdqQFl4Bn3zMgDHhiuVmn+waxHmTYtqaoAmQcwvS32Vk4AIP/wIVNdgKqfqPTWViFV7/qq/Yl
	/RBw9eWJFTViGVESHm2rso4odMk1IPU0U31hi/PbFht2K/Jen4ng0/kFS6BTU7IxVK1+U+YfQG0Gj
	erOy5kVkZ8tVHQtYO/Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQQsr-0000000B8Va-3xPt;
	Fri, 22 May 2026 14:29:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQQsp-0000000B8UK-0G5i
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 14:29:52 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64M90dvQ2765491
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 14:29:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g7YJh6S3LOw4N2D0kOgN8qAMoXO76noYCCbV3Z7SoKw=; b=fQGjtB+bC9wPyIXf
	jE2JEr6EZab8eezHxz5Wvofhi41Zb1oT5FYhFigpWRCGTMQMoZnGoolykRl2zYtS
	UPAiqcxedSUPm42BzGtyVYXmtdeHVrCnxjvDAr6kIRlanZw08nq4J+lGpRfKGHfZ
	nBOqcbqk0OPBXIJdwJeHbxc3iez9BfamD4DW0hayb7zK/djWNUfwjkZTNK0JGsgA
	fZhJVfY2zZ/dBUDtpcwTyMVNhGII569jz7yumZQxqbWx0SnkKetN9QfIvr6Hs+lY
	PJypSsVdoaym6Ehj2Cf2EWouqR47dO76kIF/IBpIl3++Sva+MnIqzXPzB/p+vQHe
	OWBI2Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ea3u7wccx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 14:29:49 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2babbeff9e4so80514255ad.0
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 07:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779460189; x=1780064989; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g7YJh6S3LOw4N2D0kOgN8qAMoXO76noYCCbV3Z7SoKw=;
        b=PScNw3q5gfQyqjGTqaCEtn+88o0NZJvsdaMZ7T1EBH4XfCVHjWCFDoLxGBKolu116q
         ch+1LHPXeIaZqFU6Yy65qHJDiBt4yCn//M13IkmcpRq8xRKYYG07gll6sWlpF5/Be9hH
         DBkUeINWV4RvJ/d9I0bhTgtV3YdlQF5HhLhMObYcp1fGr5XpWHzDfZ44dgdF/fxdUXjp
         etf+YN32sy63Z3zyfJjxZiWDqqTEG3E3Z35so0UkoXqqeJLtZshQsJdYU+x4CTHy5mCm
         oeZY0Tp2LsBglJ2Ayyof4mMSxxh57v8ShHQsVBsdQFtMsLMMYBFse03XWHY59XAtcgy6
         FlWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779460189; x=1780064989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g7YJh6S3LOw4N2D0kOgN8qAMoXO76noYCCbV3Z7SoKw=;
        b=sUCSKPAFQ71Qs/gcWVLFsdY7qMMilEnNxgmwDOm6o8U3qRAc0iq9t2ZHKNfNZ0pnHi
         sjOFeh7bGnQbX249lmeAqZxTD2zbTLcp6qgGSu9VuuVfBTNnX+MLM+58K21rz6hoY2Y6
         XmWSD2Mx0sxM/dW48AINwtH6o+SxlPZ1k6BsszyxcKBH1wEplmszMKJA2GR9m/hoMj/S
         fe+7H7FNbWwiln9YThmVhiLaRG9XzXS6zcKOoZRv4KiR/sHegFNz4HSymtA26AcXc2F5
         8GTrsvP6vYnLDrR/Qyab60J/aFiV0J9dTL0Bbbxn5Yv7YpypNYy8GTtKza3F5/2UXp7R
         GV/g==
X-Forwarded-Encrypted: i=1; AFNElJ+xj0kcZCarKxjY4jgQHr1U6eIrAQ786KIuuQjgSaJQaBj1QJ36z0NHX6cocNHiyTmd36tYu+V3UHg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZ5FpzCGPjvnaEr/gu5hfNwFA6LKWijis0GBnRYJDG2xtF0o/k
	6GxmlpAkpIr/BpIDab2nrQPk44hsyZl9JsA55V8+xr2Z3GzYKaAt/28ZlnR8mY/PdRx9Wq5qN8b
	XQLfbshAOMibiYLZjWy7554McDNSR9EgsgFn0MUPsi2S7FFQToI58eS4QpZddAD8QmIpb
X-Gm-Gg: Acq92OHpdZWXk+O2wEcmymObMwRgkWnBXFzMaACWEgSFq7quLGkp6S190RcQD/wyM+9
	2QNCt8igov581e3Gnu3UIHyFpK9MUT3XqLOd+vYX2YRT1cuVTTJsNV1itdmZyIux5i3jPJGrjrk
	r5Oq0gW7NKDoJQoS1U6GCB9CI05qgYyW4F/5fq4MOT4wG/iVSzYcIGaBTdlp05Ar1d+3wbC9lvO
	o2D0Nq31XLHZWJrN2q4c5RHJ3tIBQLseNRysoBpCi72VUvUzYM/B2WA1sMgV6Cn7zzCkk7+Aet4
	DXzt65LA5gpbE5mXjr8llZy7jzKUMhIbrSEejyUtRD/9eLKkFgLoNOs2I8MX6Gd6T05GLTRSCgz
	3nUuHY6kSCKZQrPBR61P+iRqDYAYScUiKtsZsxYTadDsIHfoa
X-Received: by 2002:a17:903:11c4:b0:2b4:6597:44d9 with SMTP id d9443c01a7336-2beb082545dmr32146935ad.8.1779460188793;
        Fri, 22 May 2026 07:29:48 -0700 (PDT)
X-Received: by 2002:a17:903:11c4:b0:2b4:6597:44d9 with SMTP id d9443c01a7336-2beb082545dmr32146545ad.8.1779460188216;
        Fri, 22 May 2026 07:29:48 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb5695c4bsm18520165ad.15.2026.05.22.07.29.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 07:29:47 -0700 (PDT)
Message-ID: <293cd6ff-3b69-4448-a493-d2e72a358cbc@oss.qualcomm.com>
Date: Fri, 22 May 2026 19:59:41 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: Add Shikra CQ7790M SoM platform
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20260519-shikra-dt-v2-0-c01b90fb4395@oss.qualcomm.com>
 <20260519-shikra-dt-v2-3-c01b90fb4395@oss.qualcomm.com>
 <0b1c66ba-d841-460c-b702-8b4530d56f73@oss.qualcomm.com>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <0b1c66ba-d841-460c-b702-8b4530d56f73@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=aIXAb79m c=1 sm=1 tr=0 ts=6a10685d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=rqZrXzn3qAiNiV10lkEA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 5YSE60ChI7WE0FksiPAeWuhQvMoNcWpN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE0NCBTYWx0ZWRfX93JoLA8l2mlx
 fyyenPZWEkGpfP8jTZwwc5fkJX6P+PL72bm9Sv0/TxC7CIoUjvzWnn5CeO8DQapyikAuSH8P0On
 4is8o6OLv170wailJoifFYENalT9dsGhYY64ARmLS52fbJV7R4aXews9qnQGpcIlIOxdPihhcOA
 ksR8N206cHanNkYeNurXswvL3X07DNvUPTZ1hk79T+jRsgjh9gaHoRyd2GfgezsHtDh/Q0R5wAY
 N2lMbfwoJEZZ0qKRGlyUMwE0P+BfehRHCmTPuuxJjMbPu9BEBwt5bwtoj4vmMVS3FV828KDqvz/
 z4p1wi487y38BO/hRORLTiLwv7qADBa4Q+vl3yM7tdUISQ9YnrroQQVFkwfccsgsmkrK+9PAI8T
 F1m/QkdytvG47+c6xIP4wHCNbtGspnXHUYs+FtXfKhgwDaw7RloetMqPwa1pRlP7uXPuFCCs9XN
 wB9ySFLaYJtNu+Y4gVQ==
X-Proofpoint-ORIG-GUID: 5YSE60ChI7WE0FksiPAeWuhQvMoNcWpN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_072951_226398_569AE19A 
X-CRM114-Status: UNSURE (   9.08  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 5/19/2026 5:21 PM, Konrad Dybcio wrote:
> On 5/19/26 1:21 PM, Komal Bajaj wrote:
>> Add device tree include for the CQ7790M variant of the Shikra
> I don't think CQ7790M is Shikra

Thanks for catching it. CQ7790M is Eliza. Will correct it.

Thanks
Komal

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
