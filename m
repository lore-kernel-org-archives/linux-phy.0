Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D85CAC79F85
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 15:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/0RU3ou3Uvx9+QGjocjAuyzhhm2mocXU0oLwD+Smmg=; b=nT0CP1CY3+dj4y
	EfW0j5oD/hiXxSEuQxw1nP8x1lmC0yOtCYmypGi0sGJ5m0mJAc6XwwlKI8x5FyAZr/GcBHrjcsfMs
	FbO2dlfT+LofMPIwHsC49iXjquL2G1WuYRx5rHHZM/w6gvl4SFb6WR1GXOTx5ShuADIXYVpqc8op9
	Lv2TWkIcfuc1WwhUpKFMIYauyPX7/t+2fCWwAUT3YkT9q4Yrd9Hm+ZDD7Zv53pbqnyKV61r9WpKWl
	6Izk8rPhdnmDbD6TAP9UoOOrRDvpugrwlIN0SjQoE56sEe4rYLnwdXdBn+vSGnPVATQ81peP4M4jt
	k7qm79Z3fQYfIZvepL1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3F66-000000059dK-3LOq;
	Sun, 06 Sep 2026 15:47:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3F64-000000059cx-0EMv
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 15:47:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 686EWYQT2096545
	for <linux-phy@lists.infradead.org>; Sun, 6 Sep 2026 15:47:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iJuqbRAfLeuaHG3fQFZPvjkD3eLgn2ZlqMYozAYdRbo=; b=RiUod8Q+hPKtNg6q
	lOXnR+TICE5yki5olBYNDrHWNCOtU3q/IZRU3XGjns/3X9fkyzBofWf31R74XR6U
	7QMBQQwzUHhPY7MHjhAz3qaN+xo/T8A2zKHop0jI2DZNmu/shOcxnZfWWqwOUM9i
	d/kc8sJ4vnTNrnOzjAZEEY1mfgKIztlmGi5jc4jjYyLFrL0NhHbieSDUKVe7eUor
	qLjEKRl7OJ1B4+nur1BLBCarGbTTb0qKFUde1V6T6F1RDkDFQA8K3agv6v1uS4jb
	dx2DKBHCStVhzqRtK0s2Lgly1iVNlOBKRE/vbXNjL12mVJAPt2dtHxzgzocQpRWo
	BguGGw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gga1s3vaf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 15:47:55 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-84a251c2e3eso4363038b3a.1
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 08:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788709674; x=1789314474; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iJuqbRAfLeuaHG3fQFZPvjkD3eLgn2ZlqMYozAYdRbo=;
        b=O5cSJyEsshDxzeuFu7C0TFDtBobUdCWdKxhPkrebm4FWs9L4tyusxHRMANs4mbZelJ
         goE5c6WpKRD7SSrIvLncTRZDClt7pWMrdTdAm8vkXbalOPYbQwAt/6C/f0ldb9EbFr+M
         B+RypSJkZ0b6gNuPwEdU1ph+jSq1R8ENa3ES1S78L5rfEoaB08fz7dI3O5yPI8g8troF
         aYvmg6OpjRF45cZCJfxwqUn1K2UHL/29hUuxjxUppWnnMTxCRj6HsAyPmSf4uWlBYorG
         eFNIcAXZY08fwOIQIjjQKhnIwLwDBNA/HJ/wKLGwCa9ySr9fJtsUtxl5xBDTwJqiLkrC
         pMMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788709674; x=1789314474;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iJuqbRAfLeuaHG3fQFZPvjkD3eLgn2ZlqMYozAYdRbo=;
        b=LCXAuYEJ/QAZnV6ggaETdMY3YMuN2njVLC+Lbyi64Bwgby0nXciicy8vW9lgnf1jOj
         3vE+95mnS2fCNl0Fbv9pWL9/7wnSyZrOPPYBkTFRDgj3FuZhB3XGTfAa5YOyXaE2e/pf
         pWuf172g2Lv/Qa6L020ajyIuhbk/f5UhRPg72OXIxYoucUh2Q8DUu/IXOZiyqzMENpoJ
         FwUgy+QtCJ3R6SPpn78V+wPBDbSgx96obDxIhll7T7wGPvVjYMwnC7N+TEM/Hozilm2p
         qv/Ap7cZL/BdGBSPmNk2BdIp2uOvT+7tr7WqKGzZcrvu9xU7vEm5a8/y7wZGZaug3ioH
         upEw==
X-Forwarded-Encrypted: i=1; AKwUvByqAZ57QO1Ids671/tfdQvvWs+iNO7Ah3kWZpldpP512ugtS4Fh3S9yuy5PXY7CUiN5f4/GrSr9YY8=@lists.infradead.org
X-Gm-Message-State: AFuF++lvyLsQvDruJhsJkpduW0/GK3LeSeYy3ZBK6s95j8FY2Y7OGEiv
	Me1/aOuLkYXnYwcw1FYIqGYOyvaI+rwJ+TmmEy1OTs9fSzo97TfCj78kfIsUMS5ARn5slD7k9SD
	Qd7yv4rdWCqp50zTwpsvj6K9/93Z0cuP79X9E9BhO/YYBakJSRR0D7VHuN6REs30dySnD
X-Gm-Gg: AYBFou1xbaBmDn65wlbXDT8+4gYJXntBlfpJ5GJv5d6ejA+wa0i8iKwFt9DifTL/kw7
	S1PU33uU/yiB+qED058B/BdLckR7v6w53KoMhj/hicCAj3e+gVoiTvp1v5xvlzhfsXCakxP6MvU
	GS6vDuIXpexeYUqLKeMM9+G0Ohn/1ytQaB1cw/fPUH8BeWOQXBQRfFoVJFSlsTvi/ioUiWm8fW0
	P2A3ma2l12X1HoOy92exhcsnWJyWjfwz2/LG+MELD6m4GW4UWR7IkP79BrHiaelDaZO3Iwhg8Pn
	mDZDTPJn81gRJcCthzHDYFkzZEpuWBe4cTpT3FVdLA8EX4xno+rdoS26m60+Xrtpf2SaJnUiFDS
	4WEcYf2s4jhk26cTUHU4xHuX6wBEL
X-Received: by 2002:a05:6a21:8887:b0:3d3:3dca:f0a3 with SMTP id adf61e73a8af0-3da21418721mr21362743637.8.1788709674507;
        Sun, 06 Sep 2026 08:47:54 -0700 (PDT)
X-Received: by 2002:a05:6a21:8887:b0:3d3:3dca:f0a3 with SMTP id adf61e73a8af0-3da21418721mr21362685637.8.1788709674052;
        Sun, 06 Sep 2026 08:47:54 -0700 (PDT)
Received: from [192.168.1.11] ([103.211.19.41])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339aa33e96sm20951125eec.12.2026.09.06.08.47.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2026 08:47:53 -0700 (PDT)
Message-ID: <b0089142-45eb-4cf7-be6f-45c9889b3756@oss.qualcomm.com>
Date: Sun, 6 Sep 2026 21:17:43 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 5/5] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-5-e2197a3e2551@linaro.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-5-e2197a3e2551@linaro.org>
X-Authority-Analysis: v=2.4 cv=WMBPmHsR c=1 sm=1 tr=0 ts=6a9d8b2b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=HcLy/BXbbKFjgnJyaMb84Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=zWu_p7zOJ7ruh_JjBGAA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA2MDE3NiBTYWx0ZWRfX9jR2qmWWazpV
 +9dMKbzxBXo4ibB8UlbAb0VjGMOPB5PeK/HH+QJx2f9uPpUDoatOy7R5xqR/d+0OdrhIQ0GXFRp
 ISKrB31UGXyUdR4uLbV3w7KbM+z2cts=
X-Proofpoint-GUID: 5p2CcEQS7SzhA4ImSVl-ygOlZSpSxSb4
X-Proofpoint-ORIG-GUID: 5p2CcEQS7SzhA4ImSVl-ygOlZSpSxSb4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA2MDE3NiBTYWx0ZWRfX6ZELD9MLy00j
 tcWs6Uk4o0QGcGsceXozBfO8FbAAx8L6C4ZePInJyjfKq+oOtXz80L+TIifPmzigXTDwCVxosNR
 K01oCuCiJ895BFgkA+z6AkoYrfn640iJdV1D9cc+YaHtDgBaMJGgPPmgf/6sMuRsvQ+xv9dF6kH
 B0ekZ8c4x8JdzuzttPlARQO8MnAkV+clteDQbSB1+BfnCYfeFBAiOxryCWdT7B1RnHbZZOqt47Q
 SQeHVyMXFuPGcx20UXQPrVcOFmHQfKDuU3HqFtNy5gZHS2TsfWoGSR8QbM8x3YuVlKsLo7rXLii
 sztg1aZlJ/Zq/H/VjSAoNoRKvBKWAxNFzSorVhhWf+Nqb7PbeGjZqgWxZ7e2/SAHRtg8vtl6JMc
 HsF198G3hBHxyzcC2FWdCKVjS+yJA0jHIxirE4E0NCaRsZUaPeG80NLsLBoHOi4w940kark2N9J
 nEdqQ5JpYFOad693HUg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-06_01,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609060176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_084756_138609_3A2D4C22 
X-CRM114-Status: GOOD (  25.43  )
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



On 06-09-2026 19:47, Bryan O'Donoghue wrote:
> Introducing a dedicated CSIPHY driver community feedback was both to move
> to data-lanes starting at index 1 on the PHY side and also to match that
> indexing scheme in the CSI decoder - CSID.
> 
> CSID consumes the data-lanes property to determine which CSID lanes to
> switch on. For indexes starting at 1 we need to amend the logic somewhere.
> The PHY side code normalises the input data to register level meanings so,
> replicate that logic on the CSID side.
> 
> Introduce a simple flag to differentiate between legacy indexing @ 0 and
> new indexing @ 1.
> 
> Existing bindings are not affected.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  drivers/media/platform/qcom/camss/camss.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 84097d82d99c9..07b3cddca5840 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -4742,7 +4742,8 @@ static const struct parent_dev_ops vfe_parent_dev_ops = {
>   */
>  static int camss_parse_endpoint_node(struct device *dev,
>  				     struct fwnode_handle *ep,
> -				     struct camss_async_subdev *csd)
> +				     struct camss_async_subdev *csd,
> +				     u8 lane_base)
>  {
>  	struct csiphy_lanes_cfg *lncfg = &csd->interface.csi2.lane_cfg;
>  	struct v4l2_mbus_config_mipi_csi2 *mipi_csi2;
> @@ -4777,7 +4778,14 @@ static int camss_parse_endpoint_node(struct device *dev,
>  		return -ENOMEM;
>  
>  	for (i = 0; i < lncfg->num_data; i++) {
> -		lncfg->data[i].pos = mipi_csi2->data_lanes[i];
> +		u8 lane = mipi_csi2->data_lanes[i];
> +
> +		if (lane < lane_base || lane - lane_base >= lncfg->num_data) {
> +			dev_err(dev, "invalid data-lane %u\n", lane);
> +			return -EINVAL;
> +		}
> +
> +		lncfg->data[i].pos = mipi_csi2->data_lanes[i] - lane_base;
>  		lncfg->data[i].pol = mipi_csi2->lane_polarities[i + 1];
>  	}
>  
> @@ -4794,6 +4802,7 @@ static int camss_parse_ports(struct camss *camss)
>  {
>  	struct device *dev = camss->dev;
>  	struct fwnode_handle *fwnode = dev_fwnode(dev), *ep;
> +	u8 lane_base = camss->legacy_phy ? 0 : 1;
>  	int ret;
>  
>  	fwnode_graph_for_each_endpoint(fwnode, ep) {
> @@ -4841,7 +4850,7 @@ static int camss_parse_ports(struct camss *camss)
>  			goto err_cleanup;
>  		}
>  
> -		ret = camss_parse_endpoint_node(dev, ep, csd);
> +		ret = camss_parse_endpoint_node(dev, ep, csd, lane_base);
>  		if (ret < 0)
>  			goto err_cleanup;
>  	}
> 
Reviewed-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Tested-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com> # Glymur CRD

---
Regards,
Nihal Kumar Gupta

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
