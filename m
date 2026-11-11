Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A98606A336
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 14:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HSqiB64Q;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=k3Bdbnfa;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=LAYdeOd6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MkWi5M59FSaC3+oWgQMIFV376+a6YRgiQpVN0nnKsYU=; b=HSqiB64QljlhoA8D5cM1Nh2gZt
	CL4sJZPgb91E3oy1rTSGw7W64/LBgvxQVW9+h3fRZy1TKUnGmPBL7BfepzkL0YpAMPvi+KGOWcU0Y
	Tq8XasaCLsK1s7ShS3pw5RfcNdoqpWBk0a6Tz0/Mg66g4KJMpIoVhc1B1DJ8F+bOklOa7v3IiWMJM
	DwajfqaWg8PEKQdFaHtsmN9r1VhFmsguUuK+PPtNnqBFBltmN68z0BiRH98LaDNvzG2GTiuuz2Yni
	PZuKMprik5a298XhS6OXRopL3ekmBzyELSxB+7Hxf8cPwsRdvXSdp+6k+jam8g+yE0sMYn8ikRuIc
	bmX/gBvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR8xq-00000006uh9-09Ne;
	Wed, 11 Nov 2026 14:06:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR8xo-00000006ugj-1jmP
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 14:06:13 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ABCZ2Hp1806843
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 14:06:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KXBhJCFqA5bIGvWFtXt6+Gu8
	6y2tdB1JbBanpyQaxXM=; b=k3BdbnfapFZUICnXw4zScnfcFSOPWBP3oRH1V+Dw
	eg2ahj90B9K7ySGaeK60xw8hqm92X3/AQ6W6/mwTuKiPLsgVVikoyWrlpr6xGWmQ
	L8+jlPtBHQFOWm9vFs/gQIltMeYtd01HYEPFCE8/qCFTVHB4sX790VzH2qer2XNS
	5f9YiSA4EKbVrxIw5WSGRWYqQDkZ4yyhTUlcgoC9CipCuXTf9XjqXRydX4TyQtYB
	ixkSGXijVhYT5Uf1I55xSIFZCfvWFWeyxjYQRIKUPYLqm6AV2xNlHW1Qhmfq8tGx
	WlLaGsi5227/L89FAhmHv5FGD5et1b60gIIFhLOs9KvIxw==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hvfawje04-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 14:06:11 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5edf86a8c00so762281e0c.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 06:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794405971; x=1795010771; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KXBhJCFqA5bIGvWFtXt6+Gu86y2tdB1JbBanpyQaxXM=;
        b=LAYdeOd6tirOkJG/CMWovpfWdM+qBX51tf+P+kRdG4QltaOQegxd8nPj7glYuJYTUq
         JwCU77Pyrm04Pqu2+6X3GtHLM+7+uorXUeMZX/jiKiDbRbMll0LjmZNJCA5dnkORY+nB
         6QP0RVeuUruramxNgDMEZhwwnksAv5a4OqK5EaffhJhu2WfUOIt0LN5oIKpqarQ8T967
         AfVwlETFsICDeYMsh3JuMw906FQuW3QBt+gXXeQEnnKWc7O4Bpv2gslmplXbKOJ6jAda
         hFoAgfZXDleENlAfzwNl4JXbiU+WNFerlC5FGkuO3qZWuHxiWxftdXH1siXdxER3t1Rq
         Q9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794405971; x=1795010771;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KXBhJCFqA5bIGvWFtXt6+Gu86y2tdB1JbBanpyQaxXM=;
        b=itgeFtAdR5vKk7CCf3eBs9S2E5LwG+dwXtgplFqrhVHskWMtFcn2uNZTtNA4Iqv6xt
         gFMnrU9wGkr7df+IUXMXXq4dUfwR4K6CQWTpH19NHk8b+wL1GVoyB1nWqVKoUzVVMW1e
         DMdLNTY4tHUbFxWKSUNnot0CE114/wAxk/Qesip6pLj9Q/PaB2poBOArOO4OMbPJm1mM
         RTOZcUfauFiYbVhbJbs05JkQOV4X8tBm8vivx7sx0fJquVXvGsT12wXrN4UBfUQK10K9
         2zR98bp3YSfPoFFuL02aTGekMoHd2HkmRCcy4oFKvtZ5EDgJxS3AD7lmB6qiF0Q8+Rqo
         zYOQ==
X-Forwarded-Encrypted: i=1; AL+hErGJnFbkPHgOsn1KvZeTPbfMi2+fL7QseCiIGSgq/7ujKz5138aMPQZW3nfPfRaZVh8zmL5bryxIGwQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z88O0TW42/M0PIZVaZ52IH/hh5joGGS1zHdneKbDd2lHO8jUKTb
	dr5BUf+8B5TVVEgPfB/Mtn5TMQ8aScddjBEidDAAW9lJqq0IRXv3oZlfznJIrwBmq6r9Vit8opL
	A8481yT3UsX2muT/H/+DdjOYxwzdQzJFAW/AWEUNTZXgWY/X192Vh+2vhdVgqUJQO9zFL
X-Gm-Gg: AYBFou0EsZ/DIdDJek+5Yz7w+PzTIW36vaLUI9cVWJHosMYX+ghIxzBaERcvwi74wza
	EKcISk4eb2oqJiLscUw9O0wbXl1JbqzQ9wuqvTBwpzPeixgtNFOJk06YNyPhNwuuiStSPoSmG1f
	rYmSIEj5gHUA9BwwtVidA8CWxtQXHXd45CwIuokEwgDDzPIZRAT5reQ2WQXFKi6xCL63obaJ61J
	klIieoJmD95k70c9StDzf3B+2ZsWTXSAnbbrSfkmFmVMLXjfh8o5f/lHBngyr5A6dB7hpD039ym
	MSR4Ep7al6yE/pzG7QVknCth+TKfCUJhh1fzFtSi2qt1RGv7slbzsgKiHnY2dFeRajJB/QJFrjY
	TlYnfDxOc7OlWnypG1ieAJTJTKYUnJBbeiDrHBFPBfKmbFNZypD11SyuNYuMsbs7ZyBCf7bMLl4
	RWRZgpWl6OXr9LkEW4MVxw4woJxF9PWtoMfbkNliY+iFPP60FGkxprCiOKeXn+vQ==
X-Received: by 2002:a05:6122:8f89:b0:5c9:a60d:327a with SMTP id 71dfb90a1353d-5ee1c443198mr713186e0c.14.1794405970694;
        Wed, 11 Nov 2026 06:06:10 -0800 (PST)
X-Received: by 2002:a05:6122:8f89:b0:5c9:a60d:327a with SMTP id 71dfb90a1353d-5ee1c443198mr713132e0c.14.1794405970186;
        Wed, 11 Nov 2026 06:06:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c15776f2bbsm966580e87.0.2026.11.11.06.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 06:06:09 -0800 (PST)
Date: Wed, 11 Nov 2026 16:06:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: naidu nama <naidu.nama@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, irlied@gmail.com, simona@ffwll.ch,
        Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com,
        quic_mkuntuma@quicinc.com, mahadevan.p@oss.qualcomm.com
Subject: Re: [PATCH v2 1/3] phy: qcom: qmp-combo: delay Type-C mux switch
 while DP PHY is initializing
Message-ID: <xby27hg6ajesijmdclu7f2sa2swv4ednmokka2pbn7uaufm3za@czdij7j2qcml>
References: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
 <20261111104434.2222182-2-naidu.nama@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261111104434.2222182-2-naidu.nama@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTExMDA1NiBTYWx0ZWRfXyx4gQuJS6/pn
 FVsGnKKBVa0vlFZb3873cqoJ3zEmiHwAPfXkZsFVnmCcdlXcSLW4ZcwHzP2pKSd21AKEGKXmdWL
 T58EYOUDqsqAJcUGBTJWhswQgGQyXcA=
X-Proofpoint-ORIG-GUID: jPL7qEQ4JicexhIfWIHJ_hPnwbW4E6IR
X-Proofpoint-GUID: jPL7qEQ4JicexhIfWIHJ_hPnwbW4E6IR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTExMDA1NiBTYWx0ZWRfX5EjjxJcO53ra
 Kz4aWaiXMCylkhuS/wvUUJLqWNe/VKIW9PN0iU6faA0Ed0NgmDNbLr84FGJTqXH+PmKd4A/pFoo
 d7FiVrmY8/gRe6C/aY/yc45ytzT8I4wiw2nJaYu6Dy2YVBUISWg4R8MOt1Arw1l9/XMNB6oE2AT
 QoZaFzZKIr5Fi1vyr6g0By0DIIvw65BT0mibxlT23F6XGeabYzWlMfRH9I/3WR8W43IyzuagxOF
 21OaTAtDoz7SG3x3Vh2jq5pWbWcGDQg5zSr/45uO3OswK5uhLrfK5jWapH11xsBUPo1b63fEMhq
 k7mfCnp0+l9UKGu5YmtK8ZqoTv3QvgGTnsQVqRL+Txc7UfbyI3Q77BvMTFVCp01tXG7JN3o6CMF
 +yzce02XoJKWD7XM898vlCGbM+/lrB6TyZBD7j5JlPdXhNmQiA5vbbShwe98xTWs+3z3Ej3p/9t
 HiSWRAE3qMQ1guwUSEQ==
X-Authority-Analysis: v=2.4 cv=CZadd7rl c=1 sm=1 tr=0 ts=6af47653 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=hTi17YcZWSOoB4cLaREA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-11_02,2026-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611110056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_060612_459188_21F09A3A 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 11, 2026 at 04:13:53PM +0530, naidu nama wrote:
> From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
> 
> The Type-C mux switch guard only checked dp_powered_on, which is set in
> qmp_combo_dp_power_on(). However there is a race window between
> qmp_combo_dp_init() and qmp_combo_dp_power_on() during which dp_init_count
> is non-zero but dp_powered_on is still false. A Type-C orientation change
> arriving in this window would proceed with the mux switch while the DP PHY
> is mid-initialization, corrupting the PHY state.

How is going to be handled then?

> 
> Extend the guard to also block the mux switch when dp_init_count is
> non-zero, covering the full period from dp_init through dp_power_on.
> 
> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>

Naidu, you are resending the other people patches, but the SoB is
missing.

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 61d8b7a5ce8f..3f93043f94e5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -5163,7 +5163,8 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
>  		return 0;
>  	}
>  
> -	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY &&
> +	    (qmp->dp_powered_on || qmp->dp_init_count)) {

Can dp_powered_on be dropped then?

>  		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
>  		return 0;
>  	}
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
