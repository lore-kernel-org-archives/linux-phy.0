Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45E60C982EA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 05:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=177OWzskvoP52oO4HITt6YXKXzcsHd5akbTgAuIIFvc=; b=Hvyc2aL8n6+mMG
	zCOOHFwzxEQNvKsqD3k27Frj+DmACULtgM53QLe+0wOsMr+S3YqmoEMWKQnoAN3B05ZbP+ikySe1S
	WOrTKAD6U+ivX/5KBJfvZ/CnnxwX8VkXARazBeCi8KT6Aj0kJL9/pGEsp6ElnWYwPsIrsqsB9r1JB
	+Ex/MJCFuBlTlDBn3W5H6d8Jtv54MNkpQPXgJjVduxNzZS8PemLSz8pI9PPZWDlZc3iu4TU8kipfZ
	dgAx+LlMwHouPQ/uLn2cxzVr7RT0bB/l/1gBzMDbMOnPHJRzhXey/O6DSTg6YC2ATqkKl2nq4eRSi
	Dj3JFaWHkDPEk14mK5TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Fvw-00000007DQr-2QRP;
	Wed, 23 Sep 2026 05:54:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Fvt-00000007DP4-2jMl
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 05:54:19 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68N3ie101986388
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 05:54:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1qjLbtTDhsHiX99dZ4U9zPc7b9TIIVkqC+Y1oTNhL7I=; b=gs6N7DBdlGDdnTzF
	J6NVzxTVIPUy88VXKo6EAbYiC6noCrTNvdM9E6DNFHc5S9bGvWyddl1rXMpRvaLp
	TfUF9IEVfo2WBmS0BqHPpWOMSoEbBDuD0Om94aunEBQ91h/9c/hAAEESrH140Dj/
	j45sKoMQp2hN76zSYykEeSw8QwB73dsLO+0z32CCBTbmCBKz169T6o4RGNn2opy8
	+CW2A3Z8iWUn5SZrrdWCX9bT38Qr5FhRGUA9QNrFF1tNAhjD/EtOv2iUVYynfh6q
	Tgr2G2Z40PIUPRYCKi0FIFdQU/hnUuEHuIsugjlPpgpFA56O1gWHQ9AZk9QqVNXa
	oNnpTw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gv3319802-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 05:54:16 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3282d5302ffso596777eec.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 22:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790142855; x=1790747655; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1qjLbtTDhsHiX99dZ4U9zPc7b9TIIVkqC+Y1oTNhL7I=;
        b=aqdONwryQKi12i4m1K7lxPtTySANUMnDu6wiucgXmNKUQgvKziRRz7jFmh9kYimnBT
         dSbB3Wb7KpzziJA2ZVi91LgWAoJuPajv5g+5CmBmUWI4RqfHNSPX7JxG13G6k52B/SuB
         41QZD4qATId6csgeqx4y+1EPybz79p6bSzhPBotNFyyYNG66WORNMDQ610fSvtWlLhJ7
         pjgLg9dtXUH+PcT0utxageRxLfQWNI4yhrZgswyAH2oc2wCTFGT+UuTBNfaEjs3gnZ/2
         abJzXbU6p9gXFEYZScs0MJEGLUtoEIuGSyWPrIJqf8btRe001j/QZYHc1tKEW4KPafWH
         truw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790142855; x=1790747655;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1qjLbtTDhsHiX99dZ4U9zPc7b9TIIVkqC+Y1oTNhL7I=;
        b=QLFjYtTTyv+tHf5lFKe9fA2zTOWkLHbsQW3BZ7oOLVQbY2nrcQ0jWu2oaDhxZvtiwr
         aawnUFUazNOEAcUXw2fdznFJF7mMLq/6pi/iRazOawNUf0Ctetp5XYunJwfh37sHza6B
         Xu3t7ijJVJnKzBwYNdsNz6rXnGZa1dDixbXU1l8VmleBYRR/3qcnHS3/6mf2bpbuMnGw
         ghKVtPvsBUQTfWUZY/JbKW4fmz7L5SmTpogo0mYSOQbuEby2FqbjKap33CvGGNOaESQl
         1ShmAcqfXAK6Pi1VbBBdsJFZlPqZTjIgx2ErIEuMNkSS/KG2mILdZKBID/Cja4CyReLy
         4niw==
X-Forwarded-Encrypted: i=1; AKwUvBxSOcy2PnwlrIWFJOK0L2Gt3a/nEZAfFkR10EcgOrfPUzj51AK8Oj8e0TeRPOFT6y1zkRlIiMKzojA=@lists.infradead.org
X-Gm-Message-State: AFuF++nMuSw9WRs7WtZys4Dmky99q7gKRgTyf5LIlApOSayWlows/WOj
	J8OaXfUArvVAZN1X1Sm6gS7lRcymrILPsS3vPpQgryDZAjFaMN9aiW/1khb4ycYdNqv3crQLJOS
	rNnJmwxB/mspSMNbFInRtfoXFiiIHk4Vuyur8PPQe3atfux6j2rh/ARm6Jb62a0BpEukw
X-Gm-Gg: AYBFou2MUfUCoRxlDYb8qAOzreaH2GfXW9tMVxvBdIPQh/VVh3Utxo2iRRg2inwSEUh
	6CGmXuzCCgqFJ8cF0+HtPEHYJxe6rFsd+gj1McCm8u1++YYg7GvcNX3tHmZwHH+A41Aawy7T6uq
	YavosD2wQduhpFV18Zb9CluyQOky/7YY1Egk8lEAJFeyVWY8D2GF1R0T2e3LgHCLHk93x4BlZkv
	nraJeF1CRvEEVlTHMhL3R3W1lEiv1QteqOD4odUTk8rC2ERrXCGsApD6qoH8NW7I/ox3ftmOFq9
	I7LR4h4LKX51aAH0on+uM0TAXRdJYmnj/Rwecb8lu+sdpHbHV8lltfl/dSllz0HF7AQGTLR2onV
	mLTKPXZRIQtZr9cyrTjMRS0Aji+lNoslf4IDVwoZt/dORdpQFPEaEJYzq+uZoOitG13k=
X-Received: by 2002:a05:693c:80cb:b0:33c:43c:f3dd with SMTP id 5a478bee46e88-33e7c426a71mr1660473eec.11.1790142855408;
        Tue, 22 Sep 2026 22:54:15 -0700 (PDT)
X-Received: by 2002:a05:693c:80cb:b0:33c:43c:f3dd with SMTP id 5a478bee46e88-33e7c426a71mr1660444eec.11.1790142854850;
        Tue, 22 Sep 2026 22:54:14 -0700 (PDT)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e96258351sm3304240eec.12.2026.09.22.22.54.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2026 22:54:14 -0700 (PDT)
Message-ID: <f4b3fb1e-4628-43c5-97da-8af96da4d642@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 11:24:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] usb: dwc3: core: add post PHY registration hook for
 platform glue
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
        kernel@collabora.com, Igor Paunovic <royalnet026@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-0-763bb546824e@collabora.com>
 <20260915-b4-rockchip-dwc3-rockchip-glue-v1-3-763bb546824e@collabora.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-3-763bb546824e@collabora.com>
X-Proofpoint-GUID: RLAL_35I_-6l2KkPcYPWrRJey3oyBTg-
X-Authority-Analysis: v=2.4 cv=HdaB3SE8 c=1 sm=1 tr=0 ts=6ab36988 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=pGLkceISAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=fFHpL_doKWamrhBxXOoA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: RLAL_35I_-6l2KkPcYPWrRJey3oyBTg-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAyMyBTYWx0ZWRfX6jqwKj1W++kj
 vckOXdkcwJRTosUT65eA+JlvXMT4LnUyxZ3pBbQmal59k9FaCyUkesTqf3vRWtWafzWzBbWbJfX
 35o49voRjWkoR88NKST+X6GKGhSQOJHh5L6Ej7qFfSkKGEokEPa3y/SjfXrn/+TtG5BKfXBve8O
 sXRMt6BL+7VvkYqODCr3EsQxhMRdCFcAhXjECQW0ANbgpVHaS9Mq6/D2QatKn4gzZFVzkvtjiTg
 68Lf+Z4lQW5+UbDTdMYkGI45xGXyT7MsOm6Aump0PrLx0IuWgKb+Hfra12uad8ArhAeGVr+wI8q
 FXsRnnFoQSn9Oe1JKPVkIDDO4gUo3FESclW2AWsoFvqKAQX0mYVDS3kXyBj+v4iHZja+D1I9XTO
 QzlfiBK8M9p9lKwWFjKsz1AlPjUYz6WwtgwEkKY9IL3h8fyx+tIkBMVHh6VYygw0niLsdbW3Rfu
 pKA0LmzZGVJxtfdNUzQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAyMyBTYWx0ZWRfX97tFR+9JUJep
 9crw48O8kGC5WpFLrcwAwXeJQPl2sjinqjYiJgYLxWGB3hNBmyXynaznUwoU2k/pPek2CQtHdUx
 r1JohQ7PRp9MJJZTAC5vAB9n+FE4u7U=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_225417_798808_4BF8C972 
X-CRM114-Status: GOOD (  21.62  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 9/15/2026 8:47 PM, Sebastian Reichel wrote:
> Add support for custom PHY handling steps in platform glue code
> by adding a post registration hook. This will be used for handling
> PHY reset notifications on the Rockchip platform.
> 
> Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

> ---
>   drivers/usb/dwc3/core.c | 2 +-
>   drivers/usb/dwc3/core.h | 9 +++++++++
>   2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index 4b7132887a03..daf5aec07fbf 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -1613,7 +1613,7 @@ static int dwc3_core_get_phy(struct dwc3 *dwc)
>   		}
>   	}
>   
> -	return 0;
> +	return dwc3_post_phy_registration(dwc);
>   }
>   
>   static int dwc3_core_init_mode(struct dwc3 *dwc)
> diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
> index 608daeb7ef10..e9d8df0a298e 100644
> --- a/drivers/usb/dwc3/core.h
> +++ b/drivers/usb/dwc3/core.h
> @@ -995,10 +995,12 @@ struct dwc3_scratchpad_array {
>    *				need to be passed on to glue layer
>    * @pre_set_role: Notify glue of role switch notifications
>    * @pre_run_stop: Notify run stop enable/disable information to glue
> + * @post_phy_registration: Called directly after PHY got registered
>    */
>   struct dwc3_glue_ops {
>   	void	(*pre_set_role)(struct dwc3 *dwc, enum usb_role role);
>   	void	(*pre_run_stop)(struct dwc3 *dwc, bool is_on);
> +	int	(*post_phy_registration)(struct dwc3 *dwc);
>   };
>   
>   /**
> @@ -1655,6 +1657,13 @@ static inline void dwc3_pre_run_stop(struct dwc3 *dwc, bool is_on)
>   		dwc->glue_ops->pre_run_stop(dwc, is_on);
>   }
>   
> +static inline int dwc3_post_phy_registration(struct dwc3 *dwc)
> +{
> +	if (dwc->glue_ops && dwc->glue_ops->post_phy_registration)
> +		return dwc->glue_ops->post_phy_registration(dwc);
> +	return 0;
> +}
> +
>   #if IS_ENABLED(CONFIG_USB_DWC3_HOST) || IS_ENABLED(CONFIG_USB_DWC3_DUAL_ROLE)
>   int dwc3_host_init(struct dwc3 *dwc);
>   void dwc3_host_exit(struct dwc3 *dwc);
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
