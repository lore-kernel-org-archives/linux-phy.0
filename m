Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD90C87FCB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 12:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMtYgYMsa7m49pa9DZ5trwXCOvaR61vmGV/c2SJpITQ=; b=JBuM5ohhrXdBhw
	xuEV+9BRZCTeIhGaP7Avl+8n0KuUsg7q3W2U9RA5/Ga9W7DbSscMg7xEai1utwRfohFoJ3PycNW0F
	jwezURgVos8v6dbZqI5DFyvs6a1fautW0XJzgJV8IHOzUaY7yF/afA5+SLFP/Mg2ISu9WJvZq8IpZ
	JPnFC0J8GTPfjWV1ul528VyJnDhF0XrDU0cgzUvtvY1nQsMB2o3nOIBW8Ud9oAKGAMUw7CGk02aJK
	TItViRBG5bV3rOziJlsRFTElMMIe8nMIR58LeuodWNA+FcrfPCLuV+AY/4rFjgTSEUOV/FIbf22OC
	83+Cj2z6cWCTT2N+ZdrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5yO-00000001TLz-1w6s;
	Wed, 30 Jul 2025 12:31:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5Sa-00000001P1D-21qt
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 11:59:05 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U6WCMZ017815
	for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 11:59:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gk5vGXil7RKOKTWhaZMiJw3ByMsUyxc9oWInTblZhxs=; b=crORyQp4VZYYq5OJ
	vXVC7Wpf33iPtrORDiTeGescorvgBNvzaX4JO8AvZP8vQDXOCg/Ow3SnuduUbFNz
	5lDV1TGFjX5DcZ5nsVlQrUMDFdelzDcKVx67ta3K2GGceIKhf68wIH6yE5v7Jssl
	vhr5j5BcVHsX7UVDX0w2HFlTruIJOVRDdbXUq64BVvHHNliW41/NnqWfsvvzDHom
	rTUCBP2VIvo7Y5edUNpOZAKSZRS4mM8ICO7mr6sLV78K2xWxEl0gsz2xVIoeYN3R
	D8Q+xHdxpbPFgeoFoqx4iVrQwUtpQKOnAws3Cr5yn0m6Ray+fyJpKE5sGd0vwHS+
	doS0Eg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1akk0y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 11:59:03 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70771f26fb7so208596d6.2
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 04:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876742; x=1754481542;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gk5vGXil7RKOKTWhaZMiJw3ByMsUyxc9oWInTblZhxs=;
        b=iLUYPI0WynID6jeymLPd8bqBWeeu1d6Vc2N1J2KfVAWvhlHHWKotHypD6iKZwdR41r
         9w5foUYkN029+nIU9A7hZLvipnRbcf4ab2w8v8JADSeikAqx0y4xEktqAOa6yISIg837
         A8FIsh9r5FNnx/OSlqgSOJEpaMtrNO0c2PgBeGvfETZlGyqWyTRwVhIOWPJDUdq2wJXJ
         +S1cRn7HVn/zalzagsSJKY+2BC1RICS3PNzZ15XMKrfFne8ojeeXShIIlNPv25Z2RTD9
         v4xgNfBGFE05z7If/SFVdc4uhKUxfWuv74u1j/+haRmAD+IvctAQrY3SS4li/kd05Qbt
         N8xA==
X-Forwarded-Encrypted: i=1; AJvYcCVJjJCFu1omKGvkTv/l+Uiiw00/ADNwpOdT0URPB+bwdSoFgL1H6L0Mvqw2x9xoNutZE9ARna3IQz4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdnVVP0VMCKUi923S619QC/SszmzqeF0xRLli6+k/wejYpsqfn
	7tajwED1wqUDtCOzBxo9vQyiNjFSCcuqagHR4Lvcqs8BER8ZJgsS2k41yFYTush9o6WYVABDRdt
	UMZm/+QW8rsPk6AxEAYMUMlsnGmf2rlGewb592mXzY/ZSeXYFDOn7+M8rY7A5PgkQukNH
X-Gm-Gg: ASbGncv0jv/wgkd1bJR/wL6VnfCMU73QfVMkJO7NJR+jk2pO9WuFg4L+oWfyRsRuCrq
	b+0VlKIPXGmtSY/O3Xr65LVHD+gpE1JNwYeR6M4SOSjTil+DC+Ko/YX5uPsmNNUGV94U6E3pvu4
	DfCqIVqxzOPjpDX9B3UeY/GBxz6kxfvuR5iq++dNwDAbCbo+oHOmP+d7efPqqYGAbxnLAqs35tv
	wg+10IFQ+xHBIiNOj5RU8IP9l6K2tHPFzqfl1xLxzaOifkHmsWs1iaalvf1FcDmFqgWRIo7d5HX
	4Vem/dQRehNoyYrJV67K33ivfS5WFgRxBXqno58HG7lHuvgEpqRIcm9bALbV9Fp9FWey2Np/S9i
	d8zXXKhj3NbGMYYn3rg==
X-Received: by 2002:a05:620a:2546:b0:7e6:39a2:3ebe with SMTP id af79cd13be357-7e66ef831b1mr218065485a.1.1753876742513;
        Wed, 30 Jul 2025 04:59:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEy3Ac2RJmbNiBhetSgsrV4zyrjPh4J4l/19B5GXz/9xAxchLE62srybp1Dcr/TAc04N6REnA==
X-Received: by 2002:a05:620a:2546:b0:7e6:39a2:3ebe with SMTP id af79cd13be357-7e66ef831b1mr218063685a.1.1753876742082;
        Wed, 30 Jul 2025 04:59:02 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635ad9cb9sm741180666b.123.2025.07.30.04.58.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 04:59:01 -0700 (PDT)
Message-ID: <e7952a9e-23db-45fc-9abf-0373fa26f2ee@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 13:58:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add missing refclk for X1E80100
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
 <20250730-phy-qcom-edp-add-missing-refclk-v1-2-6f78afeadbcf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-2-6f78afeadbcf@linaro.org>
X-Proofpoint-ORIG-GUID: nbFlwG5oJnwIPALYqQHPcM11EkUbWo63
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA4MyBTYWx0ZWRfXyNFg3RGZNFIW
 JN2OCGUwmpRSkgc/1rnqxixvv6n+0M7VzyRy4C4Wm7lj/kIMPjQkkLuz9/skz2GQj6sZDN/0IPi
 NZJrY/zkAOqdz5uP7ZXNO930BP/z4yfuI/uEQXILJ9t8d+Ed66CULDbPyz2KDTIm40sBrC904LL
 VHaX+rqnTivELg8k7ay8bT2IZhPw/KbHxQ+dUY5S+MjgOq0p5Y0quL0nrpN3uXGGkAcJSRvTnw1
 Idl/NmKSnGZ/mSz4Hr966yRmWCxkUboTBHSucwHQi/b/pOovLjhUt0abhHxUCFGJ7X/UlGvOUt4
 2yZMHE2QBU62x3OWUpln46fW8XDdMZad9mZc9/e4bCrNYv7YE3hPebQWj+x/DVKzCAk1KnJNqbV
 2fcIwoELgB9adEwqsmYYhWoykOT8mSLzLoQEGE24x4pMu7YQDTC5Nn6TwMmv1YF874pOkW4u
X-Proofpoint-GUID: nbFlwG5oJnwIPALYqQHPcM11EkUbWo63
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=688a0907 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=C9jaBoPFOhspESL_4l8A:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=807 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_045904_649784_A9D64498 
X-CRM114-Status: GOOD (  11.44  )
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

On 7/30/25 1:46 PM, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called refclk.
> Rework the match data to allow passing different number of clocks and
> add the refclk to the X1E80100 config data.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

[...]

> +	edp->num_clks = edp->cfg->num_clks;
> +
> +	ret = devm_clk_bulk_get(dev, edp->num_clks, edp->clks);

Go with devm_clk_bulk_get_all() instead, no need to be so stringent

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
