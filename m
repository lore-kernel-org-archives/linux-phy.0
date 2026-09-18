Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23A22C982D8
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 13:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slha4Grw7bbFhbIreY29caFCR69gMevtA9QOAXVEWzk=; b=p/twDWYokXTi4O
	K79q5oMxcAU5yWZYdGu0oOdGXjnTBpcx6BG2QNccblG96yTJtMH2TuCR+sdiK4selx/8KslqyOifN
	N+MH+QLOhSa78YY21e4Qk5p7nzJ2iRnYxCDARLtlXYWzqXtLwENgSMRaHoph17j5RbsGPPCVewUmN
	sBT0fsXwM00s/FAI+y6Gjp9vwC70w6V/hmXuxFLIxpDVejtAN4fExbpDIcYDL/5y34IR2wzK1e/Qk
	q1kNjj7dnv1k+t8Wb1lTy28/eX2L5e2Ci7eaK18/aASsF7z8g6EoYj42S6LApXc2m+tianaZGLtQF
	JvDaqyB25a4ngXS53Bvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7YEE-0000000EQwT-2udg;
	Fri, 18 Sep 2026 13:02:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7YED-0000000EQvg-2EIk
	for linux-phy@bombadil.infradead.org;
	Fri, 18 Sep 2026 13:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CKF+BfwHstfALzVlcYgGwDp+dczQ45u3j4MVRIZQmGY=; b=FPHGCPa6e2wY4896FrDxtszw3u
	4VPwlhFF5MKSZ89yvMe90KicEJm8kUcZlwUTlCx1t/usXzYIWYxZihLZnNOdGZJ/sxAblcNabdxZb
	3+QS0WHLT7bz/VDp8GoJ/lQL8vvGm16sMLq23/Ck2zBixXHBIscFLyxcL9OJWD45chHzEof+ABOuy
	7Oe+8EWL+SSO6eCv9hoRMw2fN+LsG2kr3LxlyT9UjM4xtL0+1Uh6Uld1e/I2VNkVvg0zEmjrBsUmU
	BjPeBDV0QQ1qNNWDI+aJdHI1cRurUam2bXSkQ1Ne/D9u7dWbRu4gfWSfZDnCRE8WvX8kpstjiOyQI
	tIkJz+Yg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7YEA-0000000A5zH-2Hqf
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 13:02:08 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68ICuHsk038973
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 13:02:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CKF+BfwHstfALzVlcYgGwDp+dczQ45u3j4MVRIZQmGY=; b=Gh5dBrNYIsC2hxXS
	6O8pqGCerH9URA9GezaB2NtNLgDy7tT81mqkbu+ZxArfztMFmlACeacbi6lnSU8J
	vJWjze88rAH9ZHt8vRcLhdH4kmbexlGUG2P5HIvCIWH5sr0F5hZYDAFUZ0Yqmony
	uelO/RAu+aZthmFXFS1GYiNvsF0H1fie0tqOIY4YKOxXrQlLTBQHjg9cVxHpdYCV
	JD3A5r8KSgZHxkCT/smqduSH5sKnXaDogP932RMBvEXymmdwwwwVgG0akofCdLS4
	XikZljYonIzJvn2vbQgZMFozQO3FYuRnwTycd69dc/bE3ywZBKFAz5su7fBgYm9G
	vvH0rg==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grq2kumyy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 13:02:02 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-46ade2ed260so359568fac.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 06:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789736522; x=1790341322; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CKF+BfwHstfALzVlcYgGwDp+dczQ45u3j4MVRIZQmGY=;
        b=iMWmEXmrDKq7WA+DnbxNHUo8fJp2vuCU5AP42lN4KjbSDWp2ua1yVMOY/eyPkgNWZO
         HzctGHX4qBAvYT6VlSqYPGU1YGNAwvhOb9KF8cGj+TOX4FoDBrO6DWMhWJSj8ZT4gGC+
         /l297bQ/8+qiMNTwRMZyHqSbTy5sHc6K3+oa8QfKOBnWFqqiHT+BUVIyMNYu06VFmYqg
         jOAWB/bD+cSLW+d4hMBarQ6c2N9y5o9KOb0V3RGreiak3s7YbL8j2WrldK2dKyoJI7G2
         TtbVTcBBGNQwlKvzYI4uJKBNeBW64RDHyq5xlrE6gmqyORZv1VmCDEdNubN7299Ggbt5
         QcPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789736522; x=1790341322;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CKF+BfwHstfALzVlcYgGwDp+dczQ45u3j4MVRIZQmGY=;
        b=01iPDCSIc7FQYwWSe57Jt+iPgXx98Vn0cw4pkWJEqGaJx5W/1xfssvfV1MOuObPO4L
         0S27Ts4CGmufCm04fWhY4ctV40Vs0jDiJiFwulSgOKowVv9AnV4cKRd9l/HeOKAJizn3
         b0Z352YUiVXasq59nxwwiQOIaO1SYsbSVrBA7cqVEhNh93Mp2/DiHFqeUCgnXnLtmkcs
         WMkqHcw71VLzX9onMEbSAmNwGQjYYlibRbMyOmsdTtZNhyJsDclz5aFSCBqQQgQJMvYv
         sJ2tiM+M68DFhIZya2fjimoa8vFR36kXNAYfwk1jCUXq1Pe2mT+JEGCBdlWQe68bpZX6
         ErCg==
X-Forwarded-Encrypted: i=1; AKwUvBxMTBzpH7ilg7k7qN8pdioaZUrrsk6uZCZRgZ9oFR8Cuz/dZ/JS5i0I7n58WkdPMAlZyQoEPbd1cW0=@lists.infradead.org
X-Gm-Message-State: AFuF++mB88jNzRrsUooOj63UwusyIpFKIqvXIfi53al2/gjafKyQStLv
	CgBm69zdF+VlFrsAuPfVHy3z2eHejRdJGOl/76VUbSI+aRuyMnozbu0IjScA5lBC1JuERSPGCmx
	iXoXX+hLAUDGuK3/IorPsfnYV/W8O30HkXnXlxoQxRkwFPBu8B3ZopxxVzzzcasYxSg1u
X-Gm-Gg: AYBFou2T457j75HqNeuvrcH5p1qJqJ006hl7B6al6u2TW5s2N9OoSZ6BE7z2ZDY/boe
	dptNNPkDbcFTzoaxaNH4qRZwSiLpX/JmmxtzRS3/5ZMhFSfWYkCEdcw35HAiGBTGbazOUlB1Zpf
	8tFx6+hB8El3SEJALukaqvaavLn+03Y2LfufPU/dsrSk67/n2OJpXDS334JGaqkhHxUa9HlGbNg
	xIY/wEKcVb7ozszbMlR2AgLYjD3GKfhaj0p7rNVCUc6AnZu29h6C2ejN/31+Ho/JkaU25XfjYw5
	sflnsWYKGoOWjFz8yylE4ODl87boZNl4YyRI+0sXMk+BcvWf02nvHomcc0lFHjL419YsredSEyU
	6GylLF6cdkJkIydq3KnHEAQ==
X-Received: by 2002:a4a:d857:0:b0:6bc:dd88:2782 with SMTP id 006d021491bc7-6cb1f3eb6camr1100936eaf.0.1789736521979;
        Fri, 18 Sep 2026 06:02:01 -0700 (PDT)
X-Received: by 2002:a4a:d857:0:b0:6bc:dd88:2782 with SMTP id 006d021491bc7-6cb1f3eb6camr1100874eaf.0.1789736521490;
        Fri, 18 Sep 2026 06:02:01 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa58f3236esm815027a12.9.2026.09.18.06.01.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2026 06:02:00 -0700 (PDT)
Message-ID: <1229ea97-9972-4cd3-9697-ab03c64c3fe1@oss.qualcomm.com>
Date: Fri, 18 Sep 2026 15:01:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: glymur-qcb: Enable UFS
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
 <20260918-glymur_ufs_qcb_enablement-v2-4-16619f7e36a6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260918-glymur_ufs_qcb_enablement-v2-4-16619f7e36a6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDE4NCBTYWx0ZWRfX6mIOCqkcZs6L
 TRGSQBylaB5P+49tVpVxDwMaGJ5gVXqRxh6kFj9TExEAXxZejVN3axDi7bJvJk/r28b+t4hyLC+
 8aSGpwGElFQRBpkRv0pRZ4YXwGrBA5K+iNG+GzIchVB0Hosf01x89llKZHIBrF9K0CjbgJbLrND
 ec5BM6Hfia2rEpTUQngvc7xrdeHQAicB2lHrAvhyPEU96Bnd3P90xDnAPlagEFYm+uPcv0apT47
 TwW033FzCxOG5dhTIOz8draRiE5QE1iEa+/v7XuxLThHH7kOcouo5W8hQhpKr9+sFQPifOY0wCm
 /pftc10K1u0QU07670uPhAeNK65jSbykLz43lAiuP2JfJdD3hZN9HyT5lDE+I2nc7poCY0+yBfo
 XR6kmIxAx6wNzGMTi7n+Vv2OQ2QYA06O0Ce7gq6pRuxBNjXaMiw/+6A5IcQsiRbaJHX2IkrYVqa
 dYqGK/IXTAWSNFjehYQ==
X-Proofpoint-GUID: Ty4Baay-iEqCWFKSSRQx_q8A7CAOA6s-
X-Authority-Analysis: v=2.4 cv=bcD+w+PB c=1 sm=1 tr=0 ts=6aad364a cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=BBNwevgwxSeHGHzN-EcA:9 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDE4NCBTYWx0ZWRfX0DNaOmrCgZgr
 4JLgjOj0oqmuHdadkO4P8Pecyo2huSuRJEc4knRPzcmUeiWgAflqz1X9RbmEzIYl0FeacohYkjg
 HS1MdS3/Wrry+zpnfVb1JXvxMM4ZMh4=
X-Proofpoint-ORIG-GUID: Ty4Baay-iEqCWFKSSRQx_q8A7CAOA6s-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609180184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_140206_918860_EA1D5434 
X-CRM114-Status: UNSURE (   7.63  )
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

On 9/18/26 12:39 PM, Pradeep P V K wrote:
> Enable UFS for glymur-qcb board.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
