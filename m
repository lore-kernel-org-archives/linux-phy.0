Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8627F107BCE9
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 09:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6Lzev1uwbI91CG6Zea/N/EFegXSBd5SdfoW+NKfGJ4=; b=QfxYDtpLbfCVA0
	Kx8yYUHpGJZGCShdGlIysWF4SNO9l0R/NhIEsYP++5giO7q8Y0HUAyQpwl8hh1vdNnh4HCkjQm2sc
	tXNUFaYHg9VXkufXPgfmqDPCovsYZdtuNlixO93vrMIp1pdU22pkSq0D7WwnFQl0ZsAcw6NLcj5Gk
	wOXrwh3ycdaLkRiVLHuwgWnunE7cO0KV1b7GG2hVqSz5KaQaBdaHN/zdV02TN9WeeVAT5+3FoKItc
	99sO6UTyYvB9kSB8QNvT5zShoi7CfHb85aJQX70qnBspi9Y43i6rQ+gEwCXh47tMhuy3JLgjiQqAp
	olrqpV8/hI4PlJB42i9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1L5N-00000001ezM-47XS;
	Sat, 14 Mar 2026 09:15:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1L5K-00000001ez0-3fjS
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 09:15:04 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E4dRPc4128136
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 09:15:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WVv8yDwY2UOuW5JC8S7GuKkK
	lPo/L+Eu9SHsukBtIWo=; b=PuBiBXPDNhAp6PVgTmM5B2+iX94k9Iphk6y6ljKD
	JWajOu0OXY/vHajQMYdcgcJHVoUZeVpMiAYLtL3GUFe2uYYre3ZDSifsyFXlQwgX
	kBmLPZcCs5O0jcQ8BUKXyZLa0BnINvbOPxD54+3GpWQ1W/ZxMOpI9HWdNedkThAR
	vcBcNIb/luBit6u8Jpbm2X0HHh/Cmxf97224A0gG9Bv9TYLl2ZWeutfjXXYrNKOv
	+4E2udmsysXL+3QIP4W/3AA623lMSx2p+gttoPSycwGRebwcOWMTmk5nMFOznG10
	ZM3HmyIIarHFEZ1+AwGYo7mWUkxwTb/5xqspo+jq5FWGsg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udgd1p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 09:15:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd858e8709so3085622085a.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 02:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773479701; x=1774084501; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WVv8yDwY2UOuW5JC8S7GuKkKlPo/L+Eu9SHsukBtIWo=;
        b=f8K2u2Qivh6rWytFg5dVll/Eae6IEpil7iFmRH3nxkp1k+o/9z5jJ9xgycpCZmyriN
         TU5/ju8sQ/F7idkz9/2NOZjRBqGmuv5oxDht8Tr5wLNpUl3tMn2V3my6yO96ipEKYSj6
         Ru4fyJGfvaxLoh8fYiP64Ab87yqkzu6zSQyDTyZRVYliPmBDYBDFrspSHYX3GgrI7R8A
         EpHhhoiq8fY3PoXse7VI0SfwE/lL9MM96+Abn9YGM3MNBQldmhAEW+UHM0UExcJpKEEm
         AEtrbM5nr75JkgLEH53/cBuBakghtmP5jCZXjSTpAmcfjG8cbEENjqY26pPf/vGg77vg
         6INw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773479701; x=1774084501;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WVv8yDwY2UOuW5JC8S7GuKkKlPo/L+Eu9SHsukBtIWo=;
        b=LkuAyUcfDKjN4eGt0GJe2nJXdcI/h0cigRHrr8pRD6ZM4SQPao4mhCmY2zbzatsFjf
         2VW8eEo5IssdWaLCLBmlf4iQzIBQLcxK1WaXxJof5EA113gY+UK0oelvuKrp0wXHbhrc
         MJl5SIGCZsppTmvK5xsenAuT+OOJofIoraiaDxHrFbsbjvUAzPCBbgp6MZL+xwxknTnP
         v3iRhPO+8rqvrovRcDmNfZ19hotMTZ3wp7RF41fPdrf01Ul/SUO1VndKemg0V4undf6g
         dtGTDJkY8Yd0IZGYvCuvqnFriCquVL2AQ7d3rDch9whb6bAvE1MQ3sw18uNqs2OhPOa7
         hXmA==
X-Forwarded-Encrypted: i=1; AJvYcCWBsqWUDuULeayqXMRXNbXouRNMV9bLsIXmTMP6Zs0TWfxLaie+x0eFmzz5Lu0RPhE9rwzPPf1PMAk=@lists.infradead.org
X-Gm-Message-State: AOJu0YylkWN+CmTyLXMVGICoZZ9JtSxBcgFh5J9GEtghAYu5p07y8nIP
	jQXQRRp+RAfJX021v+csNKIsE6XOODb7cxWbPFhvoDWNcsM86pazc/rut0+fegBONz/djFTGc1e
	jJoYOI4Oc18tAvxNVrXFV3q62vXoF4KgqZWRvP+mPeMuITbp463yJOfKCNhtGuG+HiDjekcKztM
	/X
X-Gm-Gg: ATEYQzxEJOyxz09+kDOhkNAQAu7nAT0lw04Mo7IzPzaOtKS65ftUq6ED4vJDUrPaTPF
	1CJ+n54DtXdURFtGixbaNJ6PeEg7JHD369oJtDNEcWQKGgCDn66roej+Pl5GOFL0vRbuvTF8i3k
	+m+D6Gqyl8CDXaWZ4MQDZJstX7T2pJ8hb0myvkCSTBGDgV+ekkOpIRAPF/vS2+pgcwKHkN4/OWU
	Z2u5L0OBhl7F5A8VeoXn7pfxm/8MEBQrz4iw4WQUDR+mNkPbZTJMmY9wF4lCmiPxVjGzDe1YAPf
	exJ3aVrmyaSZUM7EQTBzVQOmxcaFaeCT7Qef12XAtUHPvNI9seRUV1tPJLvTp/IE87/d/IX6DP9
	gXr8PjFJBWf93wL5q8Xzp+l3FxcU83/pRn6KBRFs9Ia8shorTi8Dk0GQ8puLaUYXRrf4MmRCLTu
	JG1zZnuamBO//m/jr0zcnm0jO1iV0haAsnp08=
X-Received: by 2002:a05:620a:472b:b0:8cd:942e:82f6 with SMTP id af79cd13be357-8cdb5a4b8e1mr782696085a.2.1773479701113;
        Sat, 14 Mar 2026 02:15:01 -0700 (PDT)
X-Received: by 2002:a05:620a:472b:b0:8cd:942e:82f6 with SMTP id af79cd13be357-8cdb5a4b8e1mr782693185a.2.1773479700634;
        Sat, 14 Mar 2026 02:15:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162b98sm2078353e87.48.2026.03.14.02.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 02:14:59 -0700 (PDT)
Date: Sat, 14 Mar 2026 11:14:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/6] phy: qcom-qmp-usbc: Rename QCS615 DP PHY variables
 and functions
Message-ID: <ckj6c2rute5bzachye3tl6hs3fgw7wtafoldsdutkszxjc2vsp@nplvcpzqzwfn>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
 <20260314051325.198137-5-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260314051325.198137-5-shengchao.guo@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b52716 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=eMEfm-d_TjBb98c8FgUA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 3HDxqaCj77nuTjOHTFtaT6ELVb66U6yf
X-Proofpoint-ORIG-GUID: 3HDxqaCj77nuTjOHTFtaT6ELVb66U6yf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDA3MCBTYWx0ZWRfX2iKeAPs29taA
 w45CAW8YW7QP5zd7QngKAJc0OBpEloberhT2E2mTU/VtkaV8cKxA0vPBKkfpyKei8JtOw7aDVuq
 LrdMF4PFQM5vKjPjLWzuguXejtRuvm0DTMNo9Vkk1HlFbaKNCTvmXa2R7U45SRTlB5MeUE2kq2a
 aE14ZfYDeeriUxwkBdW6ML7f4Q/gGwzIwXKq7rlnr+G1iDc9fZGSowyZOcNruUcaITjC4GSYMHl
 wFAfKgDwuklX5H/vvJNXTQXrWJaaTXlSBcLennLeRPyXjlJAXe2odM9Rdjasm6sRqZiNPNyOO5u
 1uLVdV9lk0li8QoWIxWcrFfswYvvfX8ju8ld9Vpxm0txukCa5e0gXjQCPAUkNuDXibLZlkXAzcz
 PdsPD+JFWNBU+C992udq0oTARPVX0KI1KBqypPdZCWA3eNIc1QZpIT2WzN/HTdVfxA4DvE6VRkX
 Dcun/MlBNH0Y1YASV4w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_021502_921047_B9FA0032 
X-CRM114-Status: GOOD (  14.14  )
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

On Sat, Mar 14, 2026 at 01:13:23PM +0800, Shawn Guo wrote:
> Commit 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config
> and DP mode support") chose to name  QCS615 DP PHY variables/functions
> with qmp_v2 prefix, by assuming that QMP PHY registers are versioned
> as a whole.  However, the reality is that the registers are versioned
> in sub-modules like QSERDES COM and QSERDES TXRX respectively, e.g.
> QCS615 DP PHY has registers of QSERDES COM v2 and QSERDES TXRX v3.
> Thus it may cause confusion that qmp_v2_xxx table and functions access
> QSERDES TXRX v3 registers.
> 
> Rename QCS615 DP PHY variables and functions to be prefixed by qcs615
> instead of qmp_v2.  This better aligns with how the driver names USB3 PHY
> variables for QCM2290 etc.

Well... I'm a bit reluctant with this one. The driver needs to support
DP programming on three platforms: qcs615/sm6150, sdm660 and msm8998. As
far as I can see, most of the DP setup between SDM660 and QCS615 is
common. 

> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 66 ++++++++++++------------
>  1 file changed, 33 insertions(+), 33 deletions(-)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
