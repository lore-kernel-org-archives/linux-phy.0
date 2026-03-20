Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 312651093177
	for <linux-phy@archiver.kernel.org>; Fri, 20 Mar 2026 05:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mx4XHy5SRhcMduWJSpILq/drNEFVpchFxgKIVyxBaj0=; b=u+4v+prIUyJh8P
	YQuXRryBqctngxeOqJIvxr0WCTOyffTEKZvjYxDgQJSyn0x6IkRmbFEmgebXjynZ8BztTwqc279NF
	v8rGc8LTz7DxemRj0UR3rAbX2+D2dXv5JnGFSr9p04OicSFWnJGjsx/ztx8IvhW4fFRxNM1EcA47C
	UIK8hH508tZB8yEqLfGiqwmpQewuMbBAjB92zLOF75ok/G9tgz3J99U45BiEuRpvgElg60bE0xlB4
	5kmF2qokTyzxuAzpfvdnoqZUOvfMtTFN2WcYqnBbgCBbJmwa+hxXvI/i5Vm2dRrE+94t9MliWoh76
	zSCaF9Ml266TAXTAflHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Sa3-0000000C6o9-3ep1;
	Fri, 20 Mar 2026 05:39:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Sa1-0000000C6ni-2Oee
	for linux-phy@lists.infradead.org;
	Fri, 20 Mar 2026 05:39:30 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2ZHNC335200
	for <linux-phy@lists.infradead.org>; Fri, 20 Mar 2026 05:39:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=j4ERqPzE1Zo551nVhEOlkvzN
	9K/lc+AKC3gauqsRUQ8=; b=nb96Km0vt4GalVJZFzds16Qxbpg7k3fQPv4PVJHO
	0hFmppwxVzyp9ZF/W3gFyES8uUe3IrbRxFjI5vm9vUfjBNAdDhfZOlu3UudRAXVi
	hppOOdUGk5x6ndTZbrQl0/ihGIG10ldteHcEjnB9mqp4JZyahf7jIjwSy7BNOISm
	uqoYy7Bfm6bIYAECauR1uXHtS7RLWIlnTlKjDFLfOzNtaB4TgcFSAIoJGFxQjxEQ
	7JJtKAKLFybaij8jg9mp7SQ2rssr9dIbnyvYcHuVI5QmfLXtMlPmlvzU+HA9B5mU
	ldRg6JtFh265Ex7WqO/ZsktqzEI0c9PH0i61ljc9DEXwxw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0k082cd7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 20 Mar 2026 05:39:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50925fed647so128108871cf.3
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 22:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773985166; x=1774589966; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j4ERqPzE1Zo551nVhEOlkvzN9K/lc+AKC3gauqsRUQ8=;
        b=cfS8khV9Cik29XiTJGhFuBCDmXY+aSUdFJnlRWhZBosI2s10j4OF9b63agHWq9VCBY
         zPMlJbY+S+h8x/la4VT6InmfHGhnknLzckHdI1mKelgm2EjFEjCE18Uv5KS1P7Mg3ywc
         1YhEmhRxT8sHavE1z9FyCgs0MEjxAl3ejHIwuU4DWTkD/Aed8IDsHlJ5WafZ7Bd7U55H
         WofNFV7OZgIMolZAsdfi+5ukrOM9s00uvcBi1KAsiyEIfVGyLixcz9BuCZJwm1loTW+i
         AVnmoxwIquc5NZWgdxmUXLjjWMnCOslELvRBWggxuHiJ0yaf3yQuG5DTk2WUKfriemAv
         UYfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773985166; x=1774589966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j4ERqPzE1Zo551nVhEOlkvzN9K/lc+AKC3gauqsRUQ8=;
        b=UBkn1OzBI6qzYILzKyghcgCOOYt22pYZ570/H5MQK4Q3Kf7MFC8oqm2Qs8ocsZix1j
         8Zo8OAvpVFfdK/aaljZyT355qF/bIir/YBO3gBkkGYVF4GyDVAv8sVkDKyvUxiAagspD
         fgrpRU3S8Qg4fScCSRcMdtDCWORtRCzQavsPG7wBcMajuijp2A3jNgjyU8wf0j/noD55
         42C3uELDRElQCy/asmiT7O9FhnrptGir0MptzXSCrrM6y/0fDhjr28Hy/GTZY1+9G5Xm
         GMlGYi0/tl/QilQ5v1GBdd9DKhCd9k7BTcDacaPoIfSGHFqx8a9n3v77Hj0bKY4ciiIJ
         Lhdg==
X-Forwarded-Encrypted: i=1; AJvYcCWQBxxGbeRBeTWW+3rohVSQhEpBglqLS7iimAxDzQdxfGosL/Y0CL49oXBsDA/5u0ur10APsOd6DKA=@lists.infradead.org
X-Gm-Message-State: AOJu0YySBz4YlkRv0Rnndr9znFcdus/g3zboiZ7wwSAtrj7ub0e1akcp
	8DEZ7ECFRMFq0vz0nM3M+orPvPCQuwenfg1u/eIW9b/WLNcG9H3sLRLf8t2FEms6clGMKiqvBln
	82+GJSuiItZ0b5S1irtuMc1o7NQxLxeqI5c0zES49rUq5kHdrTKfmYKzJzQNx3Lnfl5sD
X-Gm-Gg: ATEYQzyM4MGYpSWAv5PgFk//Mid9gi+BCRK6phRtfKO3xll+E+4MuRpUlsLXj/uxpP9
	dX3cjvv2SPWJX0U09+7fB6I+Zmw5P1E9ky8VKqreNINYmPepP6WMDU3ciMvofSecnszzDRdfuzj
	0bFBBahjXq5G6wCYt/moIZzKDSNGYBqp1iAl5u7UylLIvmNIIJr8x5TeSkrcWbN90WiSh6watwv
	SUpQMxY3OHUl/ym/WfGuIfi2cy5YFD2FCoQPVwig/NZjXOPY5BRDTH8qqWGiKapGLVGrq5/6tOU
	He0haXFN5nLMkcxi0hrMabYImi/tHbneiQiVHvAs0THmYP+ZjJDISrELClsTHmR9HA8qmb9Bm1Z
	jlqagaNe5L0XSVA919dF1XXsIpIa4qElcU7paEsCr6eU/OTPAhNmOO50f2B0V8TvIo7rlZ2WIzj
	KepqdMG/36lvmNmrTTwBApiOVCFU8/AAB/lfw=
X-Received: by 2002:a05:622a:49:b0:509:2222:4201 with SMTP id d75a77b69052e-50b375b779amr27242141cf.69.1773985166479;
        Thu, 19 Mar 2026 22:39:26 -0700 (PDT)
X-Received: by 2002:a05:622a:49:b0:509:2222:4201 with SMTP id d75a77b69052e-50b375b779amr27241971cf.69.1773985165848;
        Thu, 19 Mar 2026 22:39:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bf976ff2fsm3238171fa.17.2026.03.19.22.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 22:39:24 -0700 (PDT)
Date: Fri, 20 Mar 2026 07:39:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom: edp: Add per-version LDO configuration
 callback
Message-ID: <hc3jz44ibxye4jm5bhjwdcfjg42ia3of5crzgcgodqc5kyrotv@d7jw2joumry4>
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-2-ca8888d793b0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260302-edp_phy-v3-2-ca8888d793b0@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=MYhhep/f c=1 sm=1 tr=0 ts=69bcdd8f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=82J-8U3TcAj4iTVDHMYA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: fEiKBFj4JasMHSHVGcin5bvi-H0evhYq
X-Proofpoint-GUID: fEiKBFj4JasMHSHVGcin5bvi-H0evhYq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDAzOCBTYWx0ZWRfX0tNOvE6DfNWG
 1H2uQYPRlbKYKc1Rj1q61U+TviAXA3PbJGLf3b6X0hsfBoTJT0UXOar2CWIGlkcivQ1WbJ44MPJ
 zuLS/JzX4Eo30MeA/HRbLvz+9zMgk4WTT3bklo/iZ8kLcTgMFcsWwGWskKy1svzfgNmCaWYzDU1
 6V9ARzWBBx8YEIhOCOscYnREHzyxEsJEEPxvwd3kgXpH/e8O2jrdDI7tBE8ufe2snygf02XkiE/
 CCW6Cr6u/VSM2jJrt2vlQe120FfLu42gfPmxhn1jcNoWRypMIDlSv6VEMUwF2JmoTlVAtde9Wte
 emavSZYSHbcCmrrKajesqByv6/JeGXRVlXikkbYa12sl/F5qaO3bQEyI7Lz8zOIziQIZR9QC6tI
 5za2XeBq+BSFhsCAbuh7Dq1u1QFVghvu5BipJh7aCRH+ivLdq0Hc7c4NyVa6su6IGpyLAQ8JSOd
 iC+MKukH96/GJSfndRQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_04,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_223929_753286_85BE178B 
X-CRM114-Status: GOOD (  13.09  )
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

On Mon, Mar 02, 2026 at 04:28:30PM +0800, Yongxing Mou wrote:
> For eDP low Vdiff, the LDO setting depends on the PHY version, instead of
> being a simple 0x0 or 0x01. Introduce the com_ldo_config callback to
> correct LDO setting accroding to the HPG.
> 
> Since SC7280 uses different LDO settings than SA8775P/SC8280XP, introduce
> qcom_edp_phy_ops_v3 to keep the LDO setting correct.

Please mention that this also uses low vdiff for eDP.

With that in place:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 
> Cc: stable@vger.kernel.org
> Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 86 ++++++++++++++++++++++++++++++++-----
>  1 file changed, 76 insertions(+), 10 deletions(-)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
