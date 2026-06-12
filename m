Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DE45CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 07:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VVXsdAIjaGQMX1U8aHymZz17oqbKQHTmYiDdQW7cQo=; b=qAMW1+1xTpId6o
	4uZnPkvhx+W7r+x7LHeiTI9GqMtCe7hVpzzQjHD9pp/oc/RjO/K6F6OUChqh4ZUHZlxls9IE2W1Gc
	p7yGMGa5ciHVXJDBb+9iIsreMK/FQUc/BN0qhG4YoDUyPuI0SZhLrSfQ2S1AelkkAs6KTatOhDVMV
	ROmo0wgsd78YjqZoLFytXgPwV6R+TfjcjfrwVz62imH30n73r3o5c9aInvz80g7gEXS7GEe7SI+kV
	GtFleAv8Nw4CDlhxwE9ZEAWEC4gcW3m1yZroBPhbW2tivCADn6rG6vEft5J1g0ZEbmKuZ2Hx804Va
	ja8jD6U8JGGHOvy6cK2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXw5b-0000000ASYP-0XvN;
	Fri, 12 Jun 2026 07:14:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXw5Y-0000000ASXz-113u
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 07:14:01 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C39WDp940542
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:13:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GOzIs+N6R8tJwR5cBJ70QHca
	fwj9Yt2lfriysx6gKgc=; b=p75pE7jFSli9mi432IjOZK+1LKwTQiqGSEgRZTws
	oDsT69Xj4eprdprGA4GocJGhgunFsQb1HFPvmcrKDNy2BenRmKs2/9ol99xrBHUI
	P6MCn+/FDxaHgwcPx3r0Hxoy9Rv1aB7WlKAl9c6xdJRPnaC6+QnhJjcaoBsRjEpp
	96/V0+vKHb/MNs0wJf8F0SvEN/1Kf5uC7Sp3+u3FQHdczpbXCnxgKSm67YrFNJNk
	RUawcwdVwZlfwtJSTkmJF2yeksi9iH7hDBwRDI8ne9ynSIp/S2H+Me2NCX49M53z
	ZF0DSJnOfBqkQIw+jlQXerk3KkrYhtTldGsfztjoZZvmIg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er014jxw3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:13:59 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-6cfe512e871so320853137.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781248438; x=1781853238; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GOzIs+N6R8tJwR5cBJ70QHcafwj9Yt2lfriysx6gKgc=;
        b=kZHgHSHWC3ID3Va5U/nfOLSMPW8Lyuk6V9/HwWKTs1D5D6IJMfHOk2E5+nhbT5j15X
         0brslN68NZNr0evzPgjbxprSC6jlZHpWF3NnG5VJZaf8AydT+PwywzrYf6J/vTrpQ5xW
         hlgK6Emhm6AyZwYGb+cMlXWgKfCYcelmmdLezOeqpc58zbP4FcFK3Z3/81jWasHjL+qk
         Ws0gpwvpPB0dXGLcAluHvdfIpauVG0ZxyvQrZ8CamCcapLdUonZF6VZO3B60HL8cv78D
         raPbLGdnyCLkSVLo6SUKMs+tTqb71U9jTsJhciWRqq/MoTA7SP3RobQtJzukJpEsPEQ1
         bImQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781248438; x=1781853238;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GOzIs+N6R8tJwR5cBJ70QHcafwj9Yt2lfriysx6gKgc=;
        b=WOYA26HQdeqC7iDmz4mW5D+APNWrDhcA3pdci1noJOxsOA+8qEahhx8cF9OgaTGCZF
         +w0AVG9t5NS8+H5wvaFEFIMuWeJu9LaZkgK6vN1TdFwarCHMBO4v3IA3hrhQHqIIh9OE
         TXaF6KtnwvALjgZIlf7KKvVz1zAeIJSU8AFIBGvWd07S5krBgZ0PRmWU71ehqNeOvJ+W
         CWysOjVyBgZf6vpgd7PrSVsqKT26Ti1n4e9iLlXX0va1ErVZD4GDtZVvPv4w197ZfJ7I
         ZJC4uOvGt6XwyVfRalRTng+pfwQv3QpCCouAQEkD1fxaMCmFX+evZmke4AYp93dhy7IA
         aLRQ==
X-Forwarded-Encrypted: i=1; AFNElJ9iq37W6plrUZT5s8DtQ405C3FfIMuXyyExyvlmfpIRSmnuqIPnYg9VGjnHKvlcurbt52VQ8jnrEb0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdGC96UhHszjpFHtuK3W6kZ92D1c+EHJBSHXbCP/emg4JMZcZD
	9hKUwf+oqWjrl0FhxVE1m4dlIgh8rWOXzhzl4HJwhdNlQ0qlb6apa8TGsXaAmTfb3csZJ0BUJXQ
	6Km/kmpdGvooGp8QqXGazOPQ2uVf6lR3/IBemqvwnHp2JHcv9hXXRRo9jPVVHf4kByfuB
X-Gm-Gg: Acq92OH57HBWJPUmLv5qkWjh/IOKC4mWTr3JXbjXMqYbB04V8yO4BFrRHyN35Jwl3PO
	6BYmzg3Zo9ac6wHaZglsX+2v/mVjfmXb+/tiQ7DDfk7rCNaP/CpP7hxXr0/AjHKPaMrbIrkMzTf
	4fx1rUWkK4LC+w80l5O5o/b3QsMmE0FSs+EbZS/47T/RS9W3k9lGIXL/ouBND05sG9AioY7OBzW
	Tqe6AV5mRch3utGsdzwLDg9JTP5G7Pz5WtQ3usyG37/U8cLlzXKRrCrQhRWxw/S2d/b7a25jklq
	5KRTP3ENBq3H34QZTFZgAbSTc2PWy0S6ybNcisOrWpf4MKZcRzwUNHN+cFgvO2mm5FrWod28nbU
	/PkuHnCMTxdzHbnbLAQAygUJTCIDDZk4udRKzFcORopXYHssWDqEwxsYMCdSLWd4bCDVGCFysSY
	O7hU3WL9rtzqfzz9/KwUtaVFaCtdpOhuP1HDU=
X-Received: by 2002:a05:6102:5f06:b0:607:5cd7:d7c0 with SMTP id ada2fe7eead31-71e88c7de78mr557138137.19.1781248438332;
        Fri, 12 Jun 2026 00:13:58 -0700 (PDT)
X-Received: by 2002:a05:6102:5f06:b0:607:5cd7:d7c0 with SMTP id ada2fe7eead31-71e88c7de78mr557125137.19.1781248437927;
        Fri, 12 Jun 2026 00:13:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39929c2a00dsm3756161fa.7.2026.06.12.00.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:13:56 -0700 (PDT)
Date: Fri, 12 Jun 2026 10:13:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom-qmp-pcie: Add support for ipq5210 PCIe
 phys
Message-ID: <ka5a2ku45rc6nmvju5scku34xc7lmpf423qxhs6anpdtik7aw6@eycvpfcrbnvc>
References: <20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com>
 <20260610-pcie-phy-v3-2-334011b378d6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-pcie-phy-v3-2-334011b378d6@oss.qualcomm.com>
X-Proofpoint-GUID: ja5CFd3Lav2PkJ18QbvaRJWkbZhFRGxq
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA2NCBTYWx0ZWRfX37cBnApPAqTO
 qDL6I300xmoqWZQ8YgcEmIdn6psRuHmCeS4LX8ZWtCBPl6791FcbriV+wToLDDbjkUqFB14GpBG
 X8D9w+H6GFne1dSbswAMWgKn4KdVBYg=
X-Authority-Analysis: v=2.4 cv=Qp9uG1yd c=1 sm=1 tr=0 ts=6a2bb1b7 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=Sd8SiyjhHEPRc7XwSKMA:9 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA2NCBTYWx0ZWRfXx3k0hktlZuV0
 5JoTvIKZQIOlHkuJj1pTFCijQ7/+y0x1Ir5zJKrZmOV+qb6/jlAmQMX1wDVcfVqz620pDUz4xJr
 OUF0anGuU4FxhcrcmCzWFF+leI71OMV1l6Vc4LIpJbK2dqVb99ZLC17bLfWcl99cOZ9X7asj82o
 JO7jhW40lGWpGyf25mPqSw6dAz6PMi1wdY1M3dr9c5yM35J68J3wZPYmhAVRCClP7I+NAvo6+Ph
 0WW/SGLW8gtzNH5fsVnY4wOsPqaVlGyJN6f+1FGwD0aoJgpat7riBWG0ZVsnz2XD9aV2T3ogx0I
 OL/T/gYVBoB1OYuum9qADdZs5U6pP4QVTInznHUo18jr8NxlWysjT+CskXxMNRyVKriI7yu21CR
 wK+GpvOdJt+mmdED4vk6W7bt3Sn3KIUVDPziETZPGxz9W4lulyTb7E07M/cO2KZ/y1lYOi+wE2Y
 QyIWim95ltO6Zd1w1Zg==
X-Proofpoint-ORIG-GUID: ja5CFd3Lav2PkJ18QbvaRJWkbZhFRGxq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_001400_289746_23940F71 
X-CRM114-Status: GOOD (  11.85  )
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

On Wed, Jun 10, 2026 at 04:46:09PM +0530, Varadarajan Narayanan wrote:
> Add support for a PCIe phys found on Qualcomm ipq5210 platform.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 129 +++++++++++++++++++++++++++++++
>  1 file changed, 129 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
