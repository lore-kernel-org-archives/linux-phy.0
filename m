Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A018C6FA8E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 23:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjY6aFi4mQvUwXiojd6CftevrOoHTrqGsdjvBfGy730=; b=ASgpl3WtYrBekI
	8R7wxuaqSdz44DtBBXpj3jgNGBUHUhDjrTxRxOgJKH7uSzn6eIWtqfAFrd1SKPYCYX0a6fX8KJcoJ
	De9k2TmYvtmH9HLWs4cJx84xBJ9P2pwZKuzKIOmmRAvhGYcrNib5QxhKXj9wES7UzI29+G7pUd394
	S0+a+LjlbqeirDKG/7zrAMmcdyE5o264PU26CM8rUzTT5atZPQfXdehE2t49iCDhuWblCZudbsYSr
	Zris2I7tj9dTdSqQF1/GpBUrhVjOars3mU/ZCG4C73VSZaLNrqHZJjIoMvgt3kpo4KdFrJYFd7Kg6
	8MGp6cYoPjPfn0E4uc7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oamvG-007ak1-Kh; Tue, 20 Sep 2022 23:45:02 +0000
Received: from relay07.th.seeweb.it ([2001:4b7a:2000:18::168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oamvD-007ahU-Ku
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 23:45:01 +0000
Received: from [192.168.1.101] (95.49.29.188.neoplus.adsl.tpnet.pl [95.49.29.188])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 1E1A13F330;
	Wed, 21 Sep 2022 01:44:50 +0200 (CEST)
Message-ID: <e50c2001-5e4b-fbcc-921c-4721dc5753c4@somainline.org>
Date: Wed, 21 Sep 2022 01:44:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 3/3] usb: dwc3: qcom: add sdm670 compatible
Content-Language: en-US
To: Richard Acayan <mailingradian@gmail.com>, linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20220920224320.152127-1-mailingradian@gmail.com>
 <20220920224320.152127-4-mailingradian@gmail.com>
From: Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20220920224320.152127-4-mailingradian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_164459_889305_3E987EB5 
X-CRM114-Status: GOOD (  13.67  )
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



On 21.09.2022 00:43, Richard Acayan wrote:
> The Snapdragon 670 has DWC3 USB support. Add a compatible for device tree
> semantics.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Konrad

>  drivers/usb/dwc3/dwc3-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index 9a94b1ab8f7a..34b70c3c2f70 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -1010,6 +1010,7 @@ static const struct of_device_id dwc3_qcom_of_match[] = {
>  	{ .compatible = "qcom,msm8996-dwc3" },
>  	{ .compatible = "qcom,msm8998-dwc3" },
>  	{ .compatible = "qcom,sdm660-dwc3" },
> +	{ .compatible = "qcom,sdm670-dwc3" },
>  	{ .compatible = "qcom,sdm845-dwc3" },
>  	{ }
>  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
