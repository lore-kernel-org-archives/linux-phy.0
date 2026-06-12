Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C74AECD8CA8
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 07:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJHNsreo2uYvYwTRrrY8vDbgf1o/hPzQT1bswecPLoc=; b=k5MlQeYK55DsfY
	N9oaIq8zI+LghNzCa8A4AD6vsO8CCqOA/w6HVnH/pZ6iEXGLhNWRfW7x5hq8bJxQ1xy9FhpE9FMny
	m7X9gO16df7MqC3PkTR2GgWJaJH26cTNizvQ+iv2Ik2BSnSrUwKb86j6QutV617kKz9vEY7bW76tb
	fSETETFfZA0SGpS4omWKzBu0Bcvv6y/j8Kv4VhhIY37O2aAwPSpuwn9nKR57onQtzO/zBEfyeogcJ
	zSCiYiynP//SPP1zd3peFcBnvVOsWcDi/IjTeJRgVjayegpIawoZqJZl2D4a6UEtahGcYTAavIPNT
	ZpjmmndrkKx8/2V0J+cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwkv-0000000AWMy-2NvO;
	Fri, 12 Jun 2026 07:56:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwkt-0000000AWMO-0NfZ
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 07:56:44 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C3Croc2507633
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=23qh1IfVo3G/YiV2/ivZAMF4
	usExeox7x59Igf9gmgM=; b=bBJcZXNRgciDrMvAataJQydstj15Z4pUdlIupOly
	2Q+SpUygEVWn5CoMeRilzszNTDCbh8ZXm1vbm4g12e/U/CAG8dvlUKntW7ZRTcc0
	34Ih++tfG4q96I9/DPFQrnjCSnzeQKEmGHQwVrZ1Mdw4p5i3M+Togdq5P5tzW7vn
	ZZjvz7LCWmf+xfotIffrpFefIEn5TAyeFnPAK29ndS7BlgdoHddjQ/aSC+7oZNF/
	BRyXh0nkmK6zWllG0vWH8Mn/KANlr1fet5zY9vCc962bUP8wZVE8iu1EsgczYH17
	JnZCKr9W0PDZlOB465QkDy+51E+G5JFLBU6SsaJA4+6cJw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1cbjmca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:56:41 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8ccdcd8dd3dso16679956d6.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781251001; x=1781855801; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=23qh1IfVo3G/YiV2/ivZAMF4usExeox7x59Igf9gmgM=;
        b=hDo/uDZMsaxYH0r+lRJjry5fnPqABs2OuP1iSR/sv4U7JKAbBD8/R4ZTD1CWTxZQhP
         QQ7fe+fitG5Qh7bF+r/tRs4fdS0RdEL1CYLgGVpEcr0mFKF8DOzGoSPACUBdWj0Ns031
         YM3BSzk/s2WioOhZ63v/0oAcZ6hDmUwIDCsp0kWB/cwwgaGy5ET4QA+Te2BYJft86+HE
         Z/n0uTxLFK/wNcJxkhy72VH3Us+fp9l8Eu7exZrPNy8Q917z7Yh4A/W1KneqrVtWGVzf
         uGko8R1qUleS2ZVmINAFE8IK3cv/eBS+ml3+QYdxBFg7pyy2ABUT6slLU84HBpo97hWY
         wN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781251001; x=1781855801;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23qh1IfVo3G/YiV2/ivZAMF4usExeox7x59Igf9gmgM=;
        b=C/PqtIaAK816+SFD0csQgY1/RjnuPHPfzXsYSEUR4Z4a4m779Isq8SO1HCJ42w7Rx9
         nkr1wphxgnH3uasWDV59mHqWi/ivMWWQW/tVFn9SNEFtYy/5orB7EcIU259GP8i5CJzh
         ojGwZvMGl4pegwlFHiOtK3UtmITPBlJwqwPdIJ0Oj6JX7fI2y9rN/ztu2Sqq8Ud/PlY1
         0ssMSqiJEomllR7rl4z6LL/vbsNmEapI7tfGFejG/mh4F22NZ+QPoky8iNHZOP8TmI8a
         jjOU6Bo7dE0sK4XjpBPJ8XDBCGCuEWY7jANdKuDYRiVi/hnIInmZw2kOpOAEhwa4xdmo
         vvPg==
X-Forwarded-Encrypted: i=1; AFNElJ/k9xxNT2CJcMT7d1u40btSB0GnqaDcoZuMfb8U7/Spkl/jk/SUmsVmvHJDqyUsjKYGdyRi50W+nds=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqCzrta+3vlhLKGh6JBS2zIvheQlzz5F5uWxulrrtOhOzAquGL
	ivsvL30XFLB2COdeOxX0poL25jmIRhScnXrHXkaobBG3jNgzzDdnZnHJEB/+GgZwJx6afmxUsWb
	bCfySllO0gAFeSHufydJlUx5TRQPCAo6JL7qs2HhZdqzehkcsu2paZCGsUBKdf8yF/DEAPKTOBn
	Vk
X-Gm-Gg: Acq92OHXtpAztGxNIEHZFUpEl6JWZWVd6cHxUt+Ph0YY3g3dFdxsOZCdkn4siEStV6v
	DbrHdzT5ft0kBD3Kl+cEZqnHU2ZMuoYVkzbtXUMpzowsDCzexy/EcZZ3amgH5xA4VkaqNDc/xr1
	VpUCfSH4HiqYRPLwgxA+NZhA++imSfrn7Z4PRE3L6Dw23nFyXwrG8veAMdNlqtCryZWBY7CbqYB
	cfxe8AH91qmd80jeuhEk2jrGF+0YYZG2APY2Ns75yWYh/cCKrKRSJHIWHle8LUik1ZXWFVFEJs4
	cwDgOta3Axjk3lJtucf87HjG4CvphdUmqOm7dDcYa6eYwobZODJJeOS51MqMlzrlVdT1V07c9+X
	wWLEOD3WznjhSSf4lANzqJFHVbFhiSBiobCBjVeolO9akEX2N02Lz/smIKn6jdse6iH8sofO9mc
	inkbezeU76GNK8lMRYIQYpiN8RCbXAqG0sXCw=
X-Received: by 2002:a05:622a:d12:b0:517:89d0:b8cf with SMTP id d75a77b69052e-517fe18fe25mr18621581cf.8.1781251001103;
        Fri, 12 Jun 2026 00:56:41 -0700 (PDT)
X-Received: by 2002:a05:622a:d12:b0:517:89d0:b8cf with SMTP id d75a77b69052e-517fe18fe25mr18621461cf.8.1781251000734;
        Fri, 12 Jun 2026 00:56:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2e1a7092sm311542e87.50.2026.06.12.00.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:56:39 -0700 (PDT)
Date: Fri, 12 Jun 2026 10:56:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
Message-ID: <a3f4pqg2sa3drubpcbdhm2xt5nlqdmuxtlrtaqfkuh3vgpimwy@wji6puysk3hc>
References: <20260612-ipq9650_pcie_phy-v2-0-b938cc2fc267@qti.qualcomm.com>
 <20260612-ipq9650_pcie_phy-v2-2-b938cc2fc267@qti.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-ipq9650_pcie_phy-v2-2-b938cc2fc267@qti.qualcomm.com>
X-Proofpoint-GUID: nrAqhpWbiWQxqWA4H6B0yQKIU5zwc7Fv
X-Proofpoint-ORIG-GUID: nrAqhpWbiWQxqWA4H6B0yQKIU5zwc7Fv
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA3MCBTYWx0ZWRfX1K+l3vc7vpKj
 Sa31251VxcfkSQ9XoT4Umura9u6H2TnOXgvCWThCsjcF9vjZisXgZJ+1TEhLZ2xqQPjUFqrrX0O
 vaAvoPMsVlYB8oIVsDhWzgrtbmZmeG8=
X-Authority-Analysis: v=2.4 cv=S57pBosP c=1 sm=1 tr=0 ts=6a2bbbb9 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=TUoPzBygFmjHwfOE1pgA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA3MCBTYWx0ZWRfXx0LY3aSltpIe
 1/zpxd0oQSLpwL/E1Np0IxdO8CKtWGYA1AfoIY5qrKt3uLOqjiY2X6T0UqzHO/Xd6MSb9mgKkWu
 8J6pYpA5SPUbwrqFHQVQ5NGnnFVLrN1q2DrLYbU0s59UL91Vspn7iJ8Vfim2A85cTdnyna+9nPD
 JdKj/cc0YQ+2B8ZXmkhxxmIfCyYvkYbTY+S4odMi47/691yQp8FlwjDvupbp6cpfio9xRtjpDHF
 eROlkMDkRdZ9HF19k8FWLcNvxeUFE6PXz6XtgE3na1c3ps2VrhRRW0bbqW2N6jmxYBQn2i4muCJ
 X0MrMwSpqSx9ZiOgqr/5qUBHUsmVTQ9vMARa8Qvm53Jd1zEYTpclLFjxDo2E3E4jzC+s6YPhESu
 HhxxpTIAajq0MmZwMeqYZ7Wetuf0P2cxBghHvtbkLZpwefVRA3EywEpb/++fQK4lnLKig+iR/SX
 nZocrg9uwsygpihgf6Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_005643_244508_7049ACE7 
X-CRM114-Status: GOOD (  13.99  )
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

On Fri, Jun 12, 2026 at 01:21:02PM +0530, Kathiravan Thirumoorthy wrote:
> From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> 
> Add support for the IPQ9650 platform, which includes three Gen3 x2 PCIe
> controllers and two Gen3 x1 PCIe controllers. The PHY instances require
> the on-chip refgen supply.
> 
> Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations along with
> the refgen regulator supply. Note that an on-chip LDO, driven by the SoC
> CX, supplies the PHY voltages without requiring software control. Note
> that IPQ9650 does not support CX power collapse or rail scaling.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
>  1 file changed, 220 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
