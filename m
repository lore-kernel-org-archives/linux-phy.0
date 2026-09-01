Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BDB7C624CF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 09:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dO2lIpajBOAKmw3Obn0BJZTaBg8ejELwtQBhRK5E7y4=; b=fHSTn7aOWNgacc
	l+o2BIAHeAEYfqZ1JX2RrZL2UkSqxcKKa2XaW/PHMMtNzz/e+iyIRFzS0oqZj8d0jbZJtI0bxZp0n
	n2RZM/Kl/ViUnisVPbxdOHTmC6woFftsXhq0uygkfYcEdAKaUO134xOrvGNpypsIZqrUyX7a9mWQW
	E0JngQvHV/4fxDmBWMKJjAQMkxxi2wjuWzNzGbgJoJZu67fZEknSetz20b02XHdHO23UnDXBSwaBn
	P66HmilyMI7dyFi9qFeTvp8UA23m1qX7hSedHT3Erd+B2BQtWt3oZTNIYhUv+go2ZT4qzXiug8yAQ
	2OqyGgNDfaBDhkYU+vDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1LCF-0000000BTtZ-0DM6;
	Tue, 01 Sep 2026 09:54:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1LCC-0000000BTsp-0TSi
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 09:54:25 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68179QM71811491
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 09:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6UPDyURVG0qLypFDxekoTlpl+By1uFOwQ76rrcLT+Bs=; b=nJfeO3cEXlUVIPo0
	Jy+RmnXZsLvVBfCvabNofn2k3E3Pq8bkzJNvFBzeJ9pjhrrIcZnyPL3SXqc40UqX
	9d50f8REiLc/zmV3xwrYCgiE9Rmvl75Ahtrky6OaqVObCwbqaT0y6B/uG8Ti1nFA
	k+BioNg/xmir0clteotYFL9wQl4FFwOdBggZqS917IDM6bfQ97WxauGSpYNKF7Um
	E9HOzXMyjaT8jkC4jRzYqEhW0FLa1vLOw/owjWkRbP4zvv3RzoEZOhxvU9q0bi+8
	hLhbl/5azFA4ocsAXmR07LZtTbR2yAQzDJn6iT2GttB+T4r4VOvc8pd8N9LvMXEh
	PpaicQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdd4dv6ux-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 09:54:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-9349ba88188so117746885a.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 02:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788256462; x=1788861262; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6UPDyURVG0qLypFDxekoTlpl+By1uFOwQ76rrcLT+Bs=;
        b=XqjMXomPT43HLckjOVEJCbYV+930GZrucxSuf5mcgmJyN4Ygx0lOsF482GcgwqGoPp
         pcZm5eLVSPCsAucrjbTbymzsPc3dExtd+77Ifn+xQJUBQ3opEX7REqEWHsBmffoE5tJP
         OQFRZFUzR2LrcWiyl8v6e4veuZRlKGc4rd00/yLMXOy6VIfDDP2QRxxaRIJXWObHOjmV
         C2/FluBZNfyts3R5d7bgSnQEi5G2a2AbgLEXMl1v9myFI1Zf9PQ41ne75s2w5STBZUl8
         Ta9tkx97t2I2r7xUPVzUQn5kt/arSZPI38fL3n3tgC7PD90R+yKTVLjm/aPPXFiBbpqR
         wCEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788256462; x=1788861262;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6UPDyURVG0qLypFDxekoTlpl+By1uFOwQ76rrcLT+Bs=;
        b=glyDBRwj3WObrCIhHRMpibBnjuQ380QkE1tLQFKyO7nSUwSspR/Q5oPRuJcRefJZzW
         RwFtp7z799F/g74rIzln0Amold7SOkyjAvMq9jQP68k6sWPmcZWqIZrWuGs6q83agt0U
         3JB/YBYB0Xs75tdpaHkeA7uCuXQmGCqNRhdpU1uHRcw4nyV60oLZFI9YEQtXLMLcQSwa
         ilz2k4UJngSu6hivMxevfgDV/lJKMZgw/fenR1wkeVEcJh+Zse+2um9J40PHMUhLeoDe
         JxDwss3n3X3xO7l84oi6YLNNbi1zPtlFUuZR6/c64oLm3qjye3rcwcybHD4xAunBrqir
         SxlQ==
X-Forwarded-Encrypted: i=1; AHgh+RpBpyYa5Yb9mP5flFpmUKY+Tn2uazH16AYQ69b7ShdItVuk64fWt27BEImOYDLKVhUA7iYEsZtSfUk=@lists.infradead.org
X-Gm-Message-State: AFuF++mWy5g+HnjETQjDHVLVsUckstECp11bQqRBO07q3LlKLyKJaCkK
	bnIKu+saKezd99nkPWx4+9O4A5vQihyGA3AZN5IT4I1z9tw6t9gh84fNWRDjwd6nHk76sGWgjkd
	2n/WVhJN7gWieko6GwL23r+AltQoE9R4cS8eUiV1KeY7deTBuXoD1ZkSHGyGYx7fdXnje
X-Gm-Gg: AR+sD10DClMTPzalmRVIworu8dJ5GqiE97Aos9P/kibRQbGooXB3obPXQTXj93ucHkl
	XZuRAqr/Ox6GriGgEdSLJ93eE3HGBgCe780RaM7SY4y/0pui22uzOT8e8iw4sJm/lbbC46ZMmAU
	T65Zu/9wa+xPdB47dzRFMTlY903uqUej9ctsmh7B/xkXyhO9Ch+E6jZH8na8SXT5gTgT8QhXpR5
	bUl1+PYg22Ugu/YffBtpR9bkWfkjn659oxVSFIsFj18oB1Vs2osnM9G+FkHtFyU0Lele4VWjgtD
	gCxgyZzwVXGi7trPDEPqPwo53Ok3tIUVqpJ27j1HDfFmq6aKXrvzobWBirWJRTxoJ1dwnrChD4R
	3mMwwabfrlexxXh53wiGrOg==
X-Received: by 2002:a05:620a:280b:b0:939:2884:e11 with SMTP id af79cd13be357-9392884109cmr1442798385a.5.1788256462577;
        Tue, 01 Sep 2026 02:54:22 -0700 (PDT)
X-Received: by 2002:a05:620a:280b:b0:939:2884:e11 with SMTP id af79cd13be357-9392884109cmr1442793985a.5.1788256461852;
        Tue, 01 Sep 2026 02:54:21 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255f1facbcsm546460666b.44.2026.09.01.02.54.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 02:54:21 -0700 (PDT)
Message-ID: <f6f632b9-cc2a-4966-a43b-c474a05da7ca@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 11:54:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] phy: qcom: ipq4019-usb: Propagate reset operation
 failures
To: Pengpeng Hou <pengpeng@iscas.ac.cn>,
        Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260828091857.8581-1-pengpeng@iscas.ac.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828091857.8581-1-pengpeng@iscas.ac.cn>
X-Authority-Analysis: v=2.4 cv=b9qCJNGx c=1 sm=1 tr=0 ts=6a96a0cf cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=YGK_NnCJ5jihIqQlHZYA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA4NyBTYWx0ZWRfX3xwTjzaxouoz
 cOWtfizfuC2YtW5tON+t/1wTmjGMHIRKesHrxK16yOxoyCc0nxKK44IZIAArtBzYVmtXI5Ovjd0
 fe7tL5sVjhnw1y7apSs5FFgeI7eVjvc8zTzXtNzdaPgw+5lZD98Z10s46DWw/thmcRrazkpAwfe
 PSPf6PvEWO8Bkumv5VPswrcWdYDcWyqsxxs2BlKiUS+43Dh8Bbn0MD2ogGuxRPHmdDeoJue6Fdb
 Vzu0NXnT0dMcwIk1pSOhgDoB15ODIQ3gHa/gcDAEJrBcK69t7OTnPQcT6gi4nPrkIv0rTpfjX0r
 RD6xnjbp9nTayRRzF2GTJuvqwGomeU8lgZr2Sz1+GLGKA+Tx7c8sC0x0cAEG0quPkaTlj91GG55
 fVaKkAvZfHkbZer9CtZ4Ue+OivmQXy1rTcrP5rxgyK0cDZLuXWuYvGE9ncfhBg2gLh7JMzFLG/x
 FzNaQUAeW2ewgfL4rLg==
X-Proofpoint-GUID: MmziNfkyGXz_fpRFicXDA78Fz2yX91l8
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA4NyBTYWx0ZWRfX6jIjtr8HZ8N8
 47zfRp19A+d2r4rjBsh8QZT+hJc3s/p7sLDjKNU6HvjKZ3fKeJ9gh4DCcjvk99umtU4NSjxfroa
 dBuHFdUi6SdOTFYpzRhL7pUgQPqfY+U=
X-Proofpoint-ORIG-GUID: MmziNfkyGXz_fpRFicXDA78Fz2yX91l8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_02,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_025424_269183_7D430BC7 
X-CRM114-Status: GOOD (  20.31  )
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

On 8/28/26 11:18 AM, Pengpeng Hou wrote:
> The IPQ4019 USB PHY power operations ignore reset assertion and
> deassertion failures.  Their callers can therefore publish a PHY power
> transition after the reset controller rejected part of it.
> 
> Propagate each reset error and restore the reset that was changed
> earlier in the same HS transition where possible.  This is an RFC
> because a failed reset operation can leave hardware state uncertain;
> feedback is requested on whether the proposed best-effort rollback
> matches these PHYs.

[...]

> 
> The issue was identified via static analysis and manually reviewed.
> 
> Assisted-by: LLM
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
> ---
>  drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c | 46 ++++++++++++++++-----
>  1 file changed, 36 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
> index da6f290af722..8c1834cd6a8e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
> @@ -30,7 +30,12 @@ static int ipq4019_ss_phy_power_off(struct phy *_phy)
>  {
>  	struct ipq4019_usb_phy *phy = phy_get_drvdata(_phy);
>  
> -	reset_control_assert(phy->por_rst);
> +	int ret;

Please don't leave the blank lines above 'int ret'

[...]

> @@ -69,14 +86,23 @@ static int ipq4019_hs_phy_power_on(struct phy *_phy)
>  {
>  	struct ipq4019_usb_phy *phy = phy_get_drvdata(_phy);
>  
> -	ipq4019_hs_phy_power_off(_phy);
> +	int ret;
> +
> +	ret = ipq4019_hs_phy_power_off(_phy);
> +	if (ret)
> +		return ret;
> +
> +	ret = reset_control_deassert(phy->srif_rst);
> +	if (ret)
> +		return ret;
>  
> -	reset_control_deassert(phy->srif_rst);
>  	msleep(10);
>  
> -	reset_control_deassert(phy->por_rst);
> +	ret = reset_control_deassert(phy->por_rst);
> +	if (ret)
> +		reset_control_assert(phy->srif_rst);

This return value is silently ignored

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
