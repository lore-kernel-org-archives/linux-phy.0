Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2123CCD5BB1
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 13:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3NStnLvYk771t/2oC2zuf3cf3O5Ip2PkjKyeO8JiMc=; b=JnA/9XAx8JILVA
	BlB+JXqWuFQcB4H2SBgbHrd+9s7gIBwkF3Wy+mYCCrpGKng+s+bpnxK0dzz1oyS/tIDn8uV+goSGn
	CjuWDYznOofwGZmgm/T510vIkw4/iG7lDZxNGbWMebf5euearPigNIGJOhpOkZmipXqZpOwCiZL0l
	Ywx1WDf3BiI17poidv0j2imBeOwB+9/CeRUtIWqmzRG6luxBMGMxk1dtaPIIt0XBQlph4fJD5qUjy
	7cR9YcIYu60bjsg6WIpvDOtQuFwaF9OkNNyPtyC9U1cNhsiRvXeA9jxr2g8AbzCsTcN0nCc5tVd6h
	pZtAqfgpcF67NlRg2HsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRVC6-0000000HILg-2vUL;
	Mon, 25 May 2026 13:18:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRVC3-0000000HIKh-3hXa
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 13:18:09 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64PAi3Pe824507
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 13:18:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ybURYAZAK09wyFO+bp7VbLScJXcQAPWGCyuQwes617Y=; b=KxzpXi98vAfDD7Ok
	Dtx/Pd+T5NgeL6NfqYBrlmaLQpP4+I2keRIS/IteTFnwocTsHROwTUwlI2UkghRz
	bC9FVXdRj8Sz4u5v1dNeIJga/13xSLTTHDLrUJYCFkaDnMss3o6+nzS4En5cnd3q
	dR5EGuoF7bZp4EbDBwyLudDVxG5l9yqggDCE8TwHbUufTix12kt/MHtot8gw3WnA
	p8ZkcJ+PoS3+JJJnBbG06VSREKJyCPZemw5OveGzDaz1ntb3+LGXzY6Zol2ALv4R
	vJdx9AWxrSiXK3ps5MfBEdkj/NysFQjexOugo7qzNLDQMj1Wv2z31XnpHWSDMBZ2
	HUsIHQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eb4m7pr8a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 13:18:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-90fe39eab32so151237885a.3
        for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 06:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779715086; x=1780319886; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ybURYAZAK09wyFO+bp7VbLScJXcQAPWGCyuQwes617Y=;
        b=dQ69DsHBz1UqePL3mmMIljtHi8TNN8fB4drfeG8Zeh6AuN95JuiA4E+1xcMNKshJX9
         bvhNOyM4BoNH5l93gIgRFVf+Z88VjKb3/pAk8UMZdwLCvBygQADu1xTtPbWr3ZM8FoRj
         4yOwz1IxNhw1UYN/3wDA0RvwC8BjzN8T63mHnpenSFnDoeBvmpPZh9hDxPeHiDusoc7v
         zWH83E2e9o9cdZVM+Hme9RoigzhOAZpbQWMggOU24fr6RSC8C01u9y4HhfIOrTd/zclw
         iywkTkaTbEWNMeInj5p00ymlVeHzs1mRheguxCGxnaZprLGZjtjA6OobFu+oKc1CGKzI
         Pwyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779715086; x=1780319886;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ybURYAZAK09wyFO+bp7VbLScJXcQAPWGCyuQwes617Y=;
        b=bg04LZe6BqfsQjCPkgZ7m4/Bjkgej7RP3SB55hXazc1HkfpX/mC61f9I3CJY45GF1V
         EqoyzmeUg038FCccbFIrvpCXgDaRXlukcacQIXi2uUKp//9CQA3Tl4v2YO9fHUJsQdsa
         Djqnv9O/bW4oGBj3C1/oTUs41eRF2myfX5KnGlkXgcNvBS+98BJMUHS0EuReBDJNDhCy
         Vmz2PveoDM3IYm94e6fxBEmAX5EsC52buk5pKG11ObkFCpvUVD/UqkAmo0eg4giRtgwd
         mEK+bsI7fOPQ9Lp2L/m57xED4oO+2bfG4yFXokI1aUGFbjQ77IgURHfH/dhbenDXJAcZ
         LRyg==
X-Forwarded-Encrypted: i=1; AFNElJ9zDXrbkyCYafpJMlt87tA4AvfXOcaaXG/pLy10yMG+vCrHjS/Vy8pcb37sgkxBAYH2kPJtr1BliIE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqEsJGY6ILDGBX8QDFpFiKiP3UOVqEI14pjaqDy9bUEPjfntFK
	RnUrTf0tT/Y/4Se0lKATOhpPS/LYi0DD0WI2y4aixV927hDr7QYxn34l8GvRVCbRpPyxxFMvoXo
	F6u88bGLwvdA4yGFE93Tv4mBu0F/W8bSHerwKjSYlhYMGabxMKOnveKLz1eGypGY6qgQY
X-Gm-Gg: Acq92OEKWCV4B1cfUakcLsBaGJbX8XQHjmaWxTgV0S/PXrmnF7B7nkY5Fs/wS0nOrlN
	lHVdFj4u5eUmcPrnzNx33E35cHx4WwLbpsngn43f7FXCfjg4oPUZ1HW9bNAQofXnVHlVgYJMpzL
	CGm+wG0TwTUus069Wwlg1DLSNHDeYczxocXAcpvHmoneF7S+IUz3byz2P3xMFtlVJoBlC19HQWs
	f9L6xgWYp8SY0kjBGE/gXSTRJTunYmBiGk2YWY1hJkvCKrwfYWFZ/bP/7hOCY6AGMS0bEYp4jsH
	TPg31SB1ksTCnHYOd60m3sstYMSVUDfQnCQIoQPyD1wcaMhFAPmNSQm4ttn+SCDvTD3EI0eSa5S
	/kSGwMvmaSYb2Sdm4n7QHrUv78YlQjISweDpGVBjnDhkE+Q==
X-Received: by 2002:a05:620a:6485:b0:912:4e97:5e63 with SMTP id af79cd13be357-914b48c09bamr1312632785a.2.1779715085679;
        Mon, 25 May 2026 06:18:05 -0700 (PDT)
X-Received: by 2002:a05:620a:6485:b0:912:4e97:5e63 with SMTP id af79cd13be357-914b48c09bamr1312627485a.2.1779715085062;
        Mon, 25 May 2026 06:18:05 -0700 (PDT)
Received: from [192.168.119.254] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-688b9f50364sm4126356a12.8.2026.05.25.06.17.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2026 06:18:03 -0700 (PDT)
Message-ID: <7d61b15c-b303-4b66-973f-b30d2314229b@oss.qualcomm.com>
Date: Mon, 25 May 2026 15:17:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: Add Shikra EVK boards
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
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
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <20260522-shikra-dt-v3-5-80ffde8a3dc4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260522-shikra-dt-v3-5-80ffde8a3dc4@oss.qualcomm.com>
X-Proofpoint-GUID: By6Y3PxhtpM9lUrgHvCEhtoBRjRuElnL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI1MDEzNyBTYWx0ZWRfXyufO64EiQ3oX
 ssMXiqxEgLNHLQtuf88NbGc9hQ390Bia5UTDGARZHYmmUdYTORDFUoRUvTilBShWNTlTdQHs1Sw
 doY9vaX2FU87gvXicWvts1buo1Yg3b4/CvSFii2E2CW8Kg0Xk5tJAe07nA9lwCOOpr7qwEKp3mW
 XxEwnkbCgiBzE8xgjomVLc/NeB3Ne2+zckJ58wBr+qLDR2ZyFZFbchZm+eqnsylfeBX2K/X0PKN
 kac5zZReo9OP64iNzr2DRLR+TwGrH9nm4d4ILAIPG63aw7yZ2XRf0wGcPKxnLKFXVyrpnDhGGoI
 M2f2NONrPHGyQJogWPsqbNFJrbap0Kr09XORgQtZAXIFwwMcCHePiKIz+IBq7sfcIMhGLctlYli
 PAjZEyBFNS0foJ/MSUc2L5lYEUp0T8m9MYnDlR5Eb9vMzn6ZCMEGI8fR+AkQViLBCyO2Uunc3GL
 iOei+STNdySnJhFlSJw==
X-Authority-Analysis: v=2.4 cv=MrJiLWae c=1 sm=1 tr=0 ts=6a144c0e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=ljmfqE2-A84B0niWMNwA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: By6Y3PxhtpM9lUrgHvCEhtoBRjRuElnL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-25_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 malwarescore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605250137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_061808_044924_E811D72A 
X-CRM114-Status: GOOD (  11.05  )
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

On 5/22/26 8:02 PM, Komal Bajaj wrote:
> Add device trees for the Shikra EVK platform, which combines each
> of Shikra SoM variant with a common carrier board.
> 
> Three EVK boards are introduced:
>   - shikra-cqm-evk.dts: pairs with CQ2390M SoM (retail, with modem)
>   - shikra-cqs-evk.dts: pairs with CQ2390S SoM (retail, without modem)
>   - shikra-iqs-evk.dts: pairs with IQ2390S SoM (industrial, without modem)
> 
> Also add shikra-evk.dtsi, it represents the common carrier-board and
> daughter-card configuration shared across all Shikra EVK variants.
> 
> Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
> Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
> Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---

[...]

> +&qupv3_0 {
> +	firmware-name = "qcom/shikra/qupv3fw.elf";
> +	status = "okay";

nit: let's add a \n before 'status'


Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
