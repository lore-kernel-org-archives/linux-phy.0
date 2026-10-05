Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33B4CCA5FFD
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 07:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzsT0ia0J+7AWAsokakkuWsrKe1DaIvkdPmXyWIKnyI=; b=niBzhdtHgVDWhQ
	XyzLzi8Gb/oZA3iBin6LukZ0BWFQxRcQbnGcYK8E8N2W+XJ/s/VQ7ORfG3umhrY48/xkMIbjApvEn
	knqp4upL4yulgDchls8yKGANrZAEuPvX7P+Ahrfs1k3UUJYaxf4E2wmVLlPXCskxLpjl3mwga9kY/
	MG0P8C+vSVfMuxAJVJ0Iqy4zguff6YN/JqLqn5sGmRH5SWVmu40GdqZVNGQHrT3MRhg2Dhygr1eMU
	vwbKPGonBqfFEFiA0rcQ1JB/qs+s+PhX52/q6RPL668j5G4e9WcOxfu2ybDgVrPIv8OFGOsCMKTRX
	ehqJY51A6+8b/dtK0eAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcw1-0000000FmXr-3aRL;
	Mon, 05 Oct 2026 07:16:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcvy-0000000FmXT-3Emz
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 07:16:27 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 695107m8497212
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 07:16:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PTQJcg1lkUmuY72CyxDCcV2H
	rbwklipgzh+7RxBtm4k=; b=hW6S/mVEabBct/u6Fj/JZVs9JYHysljkVD8UMMDE
	Vv8QbgnS5dtm14tEuF22dpPsPIQV7xK4n/G+cEFhRQjQ1W8s/L8oGAufvxTKxSU5
	r7DUGeuiNVfV1L3MkgMaIuzJ7cAH6bBuL78NlBZjzkDcLMACFwxuM2bgEyjkzcdq
	ITE47ODL/Lp93caUKdAKplG5pJ9YjKTSO+spaDoLjurs9UXkTMGyBMAR61NjX180
	fk0uDdA7bWJsed+MLxQePxw8PmaVj1RYqZizJrPVSL/QK+uPUhp0kLts5piZCiQY
	hzxEOPDg796dJWHiX64EWLreEXohZ054hyjg9U45cA5aAg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h3xgys3wr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 07:16:26 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-988b86c66e5so1119127241.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 00:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791184585; x=1791789385; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PTQJcg1lkUmuY72CyxDCcV2Hrbwklipgzh+7RxBtm4k=;
        b=Tryo2X953mXQ46yne6X9rzjS4C0AThzCggrG5bTFkgscEyMXCnZ9tyiOpGrvRNnGXT
         3/tYswVksyaXC1CpLEPyWAbywakr/TRQm6jPBRIq276DcvyghKftCmGKay3DILJtSwr+
         d7OhEMetE6StXvY115S6b7ChsSzH65ClFnFErffFSsAIbSaaSkAFC6moS3nAeFtWxDiX
         bha964SuCmsO/AGCSkkNcsC5GDnGbfPlqd3cee9FHYsPSY9Pww78iYFpzHMBH/D3Kc60
         OmhYkUujMXsicJqfLyiyAGQWu1qYHwuEnmxbW6ev81rvw33QNI/R+B2jDAaVegQZqYfP
         oKkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791184585; x=1791789385;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PTQJcg1lkUmuY72CyxDCcV2Hrbwklipgzh+7RxBtm4k=;
        b=o3qCGeI1LbSIH09w499cwil/PPVBGQQYouHnzo+BFzioX7qAJCbSjHES7KJ16+Lwt5
         cUIWgNqV6DqaI8rlDEuRKM9BvDULNLHqnB8Rz86Tiy20AInRePV9N0iqXmT3XKBE5nbl
         ABrkMohTgzOeY8qJwwpDhrRlELuU+5n5sePzog7ARgYViM10ql0usO3c+Pvjbua21Ymx
         a3xe5srlTgFQCAgttIsmf07xmPXqeosTrq+ESqeEfwOe4N6ZK0OCtz/oxShvHRbkhlpi
         kD5/qFa9hMe2rHItBo0kK9BEur8Ab/IxSA7ws1iV2LSvGms0gNoF4+jJOi3DIqYy9vZk
         DuXg==
X-Forwarded-Encrypted: i=1; AKwUvBx82JjjrHbX063rvp7xNtI7FwJLU7gpF8w6XHocW8hkxixnWVZ3SGA/utfy4ZqYjsQ2NdAWpsUKDt0=@lists.infradead.org
X-Gm-Message-State: AFq9FYK0Ke7AUDYbqQdzl69ER8KvtftixoihB62l+GesxcgULdei0ky6
	y65UOK/roMvds5Z8y9KvEFMcPNuQk/y9M4rg8mL+GTnyTHgvZHEMImeT2V4y7qKWGJoX38gTKWW
	3BhX8XYNkG4f4MBndfq3NfulM6FtH/vhMXkvFSERXDSLCXzL4G+x3RCJ7PTuQkysVazOi
X-Gm-Gg: AYBFou2xvPafpjwHvn8lWTIiJllD+9XnKf0XMFlD/z71Ygpc1+qIcfak9Y+tHQWJC8i
	5Kd3scXtdVBXajNttvsEJxlXNSfuU9KaLFtuU5qGQQR5ruKr7vtFpsiWh7OPE2U9koY/zs1J6+z
	c/uAcUbQB4foTavudvQAg2sFROUC3beEf8FwuGo+QsYAm2MQ4h4WtdJuSd0oEIXofi+w58+r7gB
	2pd0rbnkNBja5TXdTQZk/49d3lRKe18kayg3jFfIf0jEOWZHNBYTm1N55cQIiTr9Sp7KoRPVo1O
	Yol6g5f7+MzbxOcpEDD2jgPw+A6AKe/528BoljUUnB1zgMCBoPFFyoZ6zbkXBiHqVnAd6YCrauD
	2d5mCHJ9b4hdNwuENW7iSaoe4VzRTUjW1BfOxqS0DnLjfMTk8aVM5smGx907alShN8NSOtQShS2
	aBxZk+HpOi6ysS
X-Received: by 2002:a05:6102:1627:b0:7bb:64cc:1362 with SMTP id ada2fe7eead31-7c0f4b9f6d6mr1914171137.6.1791184585050;
        Mon, 05 Oct 2026 00:16:25 -0700 (PDT)
X-Received: by 2002:a05:6102:1627:b0:7bb:64cc:1362 with SMTP id ada2fe7eead31-7c0f4b9f6d6mr1914157137.6.1791184584572;
        Mon, 05 Oct 2026 00:16:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a87e31035esm38762961fa.30.2026.10.05.00.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 00:16:23 -0700 (PDT)
Date: Mon, 5 Oct 2026 10:16:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 5/6] phy: qcom: snps-femto-v2: Move PHY init registers
 to config tables
Message-ID: <2kjywcx6q4cqvycbpia6junpqmg45eyuxygb7slal4fyjxah5i@dkd5lzgxx4vq>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
 <20261005-phy-v4-5-b04c4123ecb3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261005-phy-v4-5-b04c4123ecb3@oss.qualcomm.com>
X-Proofpoint-GUID: oym4n361qZimMt6Ke_4zS6-wpYd0gAsv
X-Proofpoint-ORIG-GUID: oym4n361qZimMt6Ke_4zS6-wpYd0gAsv
X-Authority-Analysis: v=2.4 cv=A6b5rKWG c=1 sm=1 tr=0 ts=6ac34eca cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=ANDOyDOR4wAE_hiF6jIA:9 a=CjuIK1q_8ugA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDAyOCBTYWx0ZWRfX/pCCUwRhAVQS
 v4e3EMaIaE6Ov0kEEmk10Ar4XnZB3tjt/edGXg6QVWjinyBhlE6/T1blWkyyur/eUjoKIi1xEQs
 dh8Abrkd8sfVcf4Cu8v1sbfJVVBRZmStSbRLcrimYY0uFRV2naJBd8NMEn3zdgMGZJlow/O+Jli
 +m1SbEEumELAFGxHIs8htxxrzAY2eLeL+g3SWvQW2xogn2WmCgDvs62JXGxJreQhlavbsqsi/9U
 sEYSRM1ml9fBoux00tvC7rSKZWrOeDr9eiHPDWAXsaRLGaTUf0r6O1zielGps9sSkLI4TnLKHzz
 KG+TrniS1ECFgdTLbpsLRqVf4w67eS7oo5zwmt+jj+WYkgxTkh6FuZXQ0/YUeVQZXFT8qNoIgRB
 N2t9yTL07zqziwXwXpEvsEHB+dHnN+Qrq1C/G7Fn2aiYrMtcMZJ3MSqxpp38PsWtGNHy5o9HfKS
 6nrOMs6B+QqzOXzOQ1g==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDAyOCBTYWx0ZWRfX6XmA1A5t7G5W
 kHZWl9blaYnGoudAuA8KUnDEM1iodYyvlNcx2OwR8gOdEOiCdrmeKHwyXNY4HKDgOW6fT1gIOPy
 5yuvxnehk6geE2pnKpceiAXNJ2xkh8Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_001626_815802_B666DF43 
X-CRM114-Status: GOOD (  17.62  )
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

On Mon, Oct 05, 2026 at 12:06:30PM +0530, Varadarajan Narayanan wrote:
> The driver currently programs the common PHY register sequence directly in
> qcom_snps_hsphy_init(), with the fixed register writes split around the
> override parameter handling. This makes it hard to support SoCs that need a
> different sequence or different values.
> 
> Move the fixed pre- and post-override register programming into per-
> compatible configuration tables, and keep the 7 nm override parameters in
> the same match-data structure. This allows the driver to share the common
> sequence while adding SoC-specific sequences for future platforms such as
> IPQ9650.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 124 ++++++++++++++++----------
>  1 file changed, 78 insertions(+), 46 deletions(-)
> 
> -	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL1,
> -					VBUSVLDEXT0, VBUSVLDEXT0);
> +	for (tmp = data->pre_tuning, i = 0; i < data->num_pre_tuning; i++, tmp++)
> +		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);

for (i = 0; i < data->num_pre_tuning; i++)
	qcom_snps_hsphy_write_mask(hsphy->base,
				   data->pre_tuning[i].offset,
				   data->pre_tuning[i].mask,
				   data->pre_tuning[i].val);

>  
>  	for (i = 0; i < ARRAY_SIZE(hsphy->update_seq_cfg); i++) {
>  		if (hsphy->update_seq_cfg[i].need_update)
> -	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
> -					UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0);
> +	for (tmp = data->post_tuning, i = 0; i < data->num_post_tuning; i++, tmp++)
> +		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);

And here too.

>  
>  	hsphy->phy_initialized = true;
>  

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
