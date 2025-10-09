Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D78F1CCD184
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 14:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGpRGEQsU2zwXwx/nwBszuZUpdtLPYYcVjCbE2OeOsE=; b=hj4IwCXj5Fet20
	S6rOSfdlSyipNc9dQQzR7lg1shF4H8GOjIwobKsgV0emHftHMXVxjBZqhtTKqV5yfCbiVEAnMWRyv
	4YpLznRjbjd0ReBpYSYga9nNqq7RiCJp3X8+3hJHIBs2u1Yv55KoUkbg713lXXsUr5IjR/V4Ju6zT
	y4T396KxXiQK4iqY4Y6mILHLnJH0tsLK0XbpBMYxphvkqAuHRd12e/XyA/WMihm7XywYuDwFTzQ49
	4kScJb68O8ISes7iohi3v1NaPOaU4nI4odwGcqQ+UzI0v5mhwVLktxzobKOH0c1urlvT2liWBRdzu
	/8d15h0Fi386tWwMbFrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6s0m-00000006Onb-2eFo;
	Thu, 09 Oct 2025 14:52:56 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6s0g-00000006OdJ-3A9f
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 14:52:56 +0000
X-QQ-mid: zesmtpip4t1760021508teed882b4
X-QQ-Originating-IP: H3oCVwaNOoE4vRYRwZpNRzAtVOKNTGpl6VBf5QRc/60=
Received: from [127.0.0.1] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 09 Oct 2025 22:51:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7343424782769660848
Message-ID: <60E11B9D37CEE163+8cf864e4-579f-432a-a507-9711d03776ed@radxa.com>
Date: Thu, 9 Oct 2025 22:51:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
Content-Language: en-US
From: Xilin Wu <sophon@radxa.com>
In-Reply-To: <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MX+1SEN3H+wA6UlqDjtZJApuYTPvpgj5kdSD6aPJiGGrrWxNsC0wzLTw
	3rRU1E3OHDeIbY5cli82fza/uDqlqvDeHm7PrnmsoGRCmXTi0kgRtuHVhWoH8eyq04AQSCZ
	KA1uuVolz1IOSL9Q3AV+pTPmBOkETJOPjpRWxRiOnEKkBEIeCL/p86K9T54p9gAAOKM1NtC
	z/Um2rn4sI6pKOdjQzcD90HVTCmOGzdsesInxJH9kclfDuVZ/qFb+mLdsdriLxJYpwzmEF4
	Epf602CNef0x0vVcfVUqsoG2Et08fZ84omMh1XLvEdKP2ZKyVcVcD0YDTXllb+6uvvcBdju
	iHDl3MJ+zAUgnTqcTOwNCoI0RB0iwYb7YFVvzsnQO3BIz3Lcw0tElg8DWrWJxiyZ3WDARlm
	2cVxi67XIOo7uK6JUV6F/rfVqO5c0/2gTruwetT0tEmvahzUiOA/Le/5WBrD3wlD2ZZ1pl0
	PW7zWjGvBuIS9SzNYUpjm+tVKU4pbiv/as52wP+He+6QKG3VoWZpZmgLXjIfFH+UkltBswu
	eSECty6zBPzJJyxZnwCb6+e9P2pl6z5kZCFAaIav0r/xDxDr3ONWEMPAIPxpFhjNfcsdimD
	Sy+aZdn3bfkfYrHwbMwwymPaaIOeRiqqcfkgvgT0HUU1rS4VI5ddy2Ix3oUlO0hJIvyjclK
	wttJtkMt/BE0Jiuet4/SdfDK0nsnsdQxUTBY/jU3+d20pbrAVE5biHMxwW2LtXOo6gkfZqF
	jT5GTiqh6tEOFA3tSiymbbXc6uxu035xL+41LDMPkTy7EWcRoHqza8StNErX+fYvizmnZk3
	dXMBiGESwrhh7juh3U/jmA4BZudjBDxOmDZqE9OByx4wUz4cuXWEWI8Ji92k5iPBtme3ZuD
	UsT4BfoL/qlWjhCts6EyIh26o5LtN2swVYATwbXcg4kfUCN4z+yKrFwd6XMi6ojDw5EzFkm
	memUskgP3NegysnyfWrbYEGdp0Ro8yXGrAbTEnobyas1TOMlnH4BvjAjHFyhWmjWia3Ei28
	OZhAEr5gyrgAJX29BT
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_075251_257552_BCC0E1AF 
X-CRM114-Status: GOOD (  12.30  )
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

On 10/6/2025 9:55 PM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]
> +static int qmp_combo_get_dt_lanes_mapping(struct device *dev, unsigned int endpoint,
> +					  u32 *data_lanes, unsigned int max,
> +					  unsigned int *count)
> +{
> +	struct device_node *ep;
> +	int ret;
> +
> +	ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, endpoint);
> +	if (!ep)
> +		return -EINVAL;
> +
> +	ret = of_property_count_u32_elems(ep, "data-lanes");
> +	if (ret < 0)
> +		goto err_node_put;
> +
> +	*count = ret;
> +
> +	ret = of_property_read_u32_array(ep, "data-lanes", data_lanes,
> +					 max_t(unsigned int, *count, max));

I think this should be min_t instead of max_t.

With this fixed,

Tested-by: Xilin Wu <sophon@radxa.com> # qcs6490-radxa-dragon-q6a

-- 
Best regards,
Xilin Wu <sophon@radxa.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
