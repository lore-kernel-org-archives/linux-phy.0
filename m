Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E9EECCA470
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 19:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ae92VeqOG+37zDUiWklcD5NYFM2QFoxjeUYfGDjvhJo=; b=2xQCI9IafvDpCX
	iaI2htp/4K/d72UAF7feMlm2ec6SeQnV07pzjwmoIxdELKfwq8oqOpMyeOZUUfSaW+yQNf+bGvelB
	SBR2QZSzO5a7kxskIbfkVuJJHFYegguevyWN/a73/rEIGJR/64/YHjEpQovwRyxayCyJTn8FtcP4G
	rK8fKXcpsqZnqoLR1sFifdolYqOEYa9rNykWu/LdZMRQfEiOyHwyuzIx2Si88t7s33RDkg5x5LL5U
	gRTsItoSqkQkeVqEzeKnRo8e1jWtlRqJmw9S5NXmcBlr1pE8QJg0v9QgXJvPL72HWEa4zN53/j+6Q
	Gi6MqKn90T0RmjGWmo7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fsJ-000000063vr-1g91;
	Tue, 30 Sep 2025 19:18:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fsH-000000063vW-2vXE
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 19:18:58 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCA40B031650
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:18:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b3HSSCY3BzeouIYSvqAMslq5
	J0hpPQL6K38VBvDOEEg=; b=BPwEgfA1B2X2gh/SfacmCPKY53mRKPlvNRRKVmhL
	lNVluS/yzDR6ofN8nWm1y/qVGKeD9g8LUfcBj0l0azpeqqmOAbw+QvSNrtJn3uI4
	hUHqOr6Nd+SukLUatW2P+R4bhRmh/HsBVtkvF/sTyuQCm4l8toHx1LL6PLTMzZVf
	1WWuaq+P604dPZcupkl+ixqchTEooXN92CEbkJqXBKT0GkkWCZvG2rvESl+yVSpw
	hOUZ88ExiH0L9vdu0bK2xgcdZlqwd7SwAy7d0FG/G9bwp1z0kv5BQNlk65waM0Vl
	Fw2T9oBF6ciPrwvsEwwsg9tp0zSBevTKbhMHYE7/K2ThvQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdhxur-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:18:56 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4df22892603so89419071cf.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 12:18:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759259935; x=1759864735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b3HSSCY3BzeouIYSvqAMslq5J0hpPQL6K38VBvDOEEg=;
        b=bbLUfxIR27ExDTxpRhzEKFSa89LptXop0RqTS1U70Lo5A9hAuoG2L+bzE/OmPhfXyJ
         EUzKh1jQe3u05K0gPmBFqUzjfOntzk+lgogFAT1U2F8lKps3m/y3I/gGVkp8Da9xUCM1
         4urabY5JP0XOKISiZkBazRuy3BZxR0wX1YbXp3jT6D9DcAoxEgmRND5sBRi52GhNu6c1
         aPfIX2jRa7vmE91H/Y1AIGQgYG/lK5cMN6qqcCPikooD/zaF8DCBjUqhsruOWjFIOrrJ
         8I8fMUyQzy0XMQHE69AObdZM8uTkVvobbG7wd35P1+1eFjRjMBKGC67OLLQLabHUZxNs
         nl6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVEB/cpFlgdgwOpv7erxxKfiRLT4UuE3+Odk5s0hNrKeAIoqATVDfBfXxEDX+/9dH260/kirJCpX6c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwF1xocH6bA3BZyiAL47JGQ4frqub3eUQbU5YeusC1D3gXYFCWu
	+nM/s5wgbFsreZ6xxYBV7E6ZUgLMxT7p9Ql8FpfugaXtosM5Z/+sGvYe8rYtb50LOrhba+Gg6g+
	pZVa0wvVajHN8MWcjlDuSAiH+sEwTAsYr2ApxhR3FApTGH5UAeP0U2hsjurpfJMzdYMd4
X-Gm-Gg: ASbGnctsIC/7uoSl56YxLLCmcccLRwKgMUWukUdvffs/kxb7ZfjbiJfNCRjubfgZyn3
	DfC8fhelOI+G4r78R+32pdES0MwFf/dX+4zBzBDP04YTaZyKiVBCQz/uV4s5iJeg0SZFumRK1sw
	AjDZYaAh2uizxFR3xkt4pKKJNqr5dWtLL4abxyDHbjOpgM/oWPbmu90oatAlU+wjVYWZ7IefuIY
	y0/FyJBEQzibTjDpd6buI/4vkin1q77GDydgQL0hBjWcpwQKSfZgfjZbdLG/P+maMvStmuFeNqI
	stZNgSSOc8Q6SGx1jbhqeMMV388a9xCnA8f71HpLKBAouSgG0pxfYtZaOIHcPZRvE3lF6UE4mmV
	eOEFOLlR911Nt9e4WZnGq7tX03EMspHFI2OCBGtqUCBQ/vTIOMEn1wukAVw==
X-Received: by 2002:a05:622a:996:b0:4da:155a:76fc with SMTP id d75a77b69052e-4e41c1605a3mr12806261cf.16.1759259935576;
        Tue, 30 Sep 2025 12:18:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFU8H+8JzMJ4Cr7XjJBZKwrmv2+lYNhsYSRGh3SqNZlsjTX2qbZYN49I9CHFceXFmguOAZDPA==
X-Received: by 2002:a05:622a:996:b0:4da:155a:76fc with SMTP id d75a77b69052e-4e41c1605a3mr12805841cf.16.1759259935020;
        Tue, 30 Sep 2025 12:18:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb486819dsm34339101fa.5.2025.09.30.12.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:18:53 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:18:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <o6iqlu4wuz3zqzkyqrp6nc3r7bi7uftjzmyjx3yvcglmz5sdfk@kbv6oacs73qr>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
X-Proofpoint-GUID: ClhdCXFMo39VBBoN6iadyMXYI61AG71E
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dc2d21 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mli57nIQh2RWQkMICy8A:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ClhdCXFMo39VBBoN6iadyMXYI61AG71E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX0eKYlJHrgTSv
 qHDZjv4SA1GxO66jRaHTw+hEqUCwpE/Tz/a2eZ8cyUdHeu3l+6MZePxFsCNELATc8E/6S6n6CJy
 1xkPi9VBn2WFf/2nUWPaCJC5/+3eRbftAzsi+7AH/hvGg1kJhQMhkNyhiwV54CmY0VeRvV+nSPA
 NhXK/tCtb95rx6T2ItZwz/1eHI7rUq6jepamt/odqAcq9N7MEfxpKLF3Wljvn5JGf/4T5aRlia1
 9oDkvt+XHbkxCOn3jz+O79YCxjpUs5ezSePkxUkUtLdCD/eEOMAOdmZRDNcm5QTbKlTFnwsAQlq
 h805glFB0zixsCaGiDLayKKMyN0kY0bQpRS0ireiu5HXln10OFLxZZ6ztmuPqM5YMvq+6DdADvt
 57NBaI0ryv26TXPx2w1lCHEFR0IS9w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_121857_741218_74A135F9 
X-CRM114-Status: GOOD (  15.36  )
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

On Tue, Sep 30, 2025 at 09:39:49AM +0200, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> Add all the data routing, disable mode switching and specify the
> QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> the underlying DP phy.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 81 ++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
