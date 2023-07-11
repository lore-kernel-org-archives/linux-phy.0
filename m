Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A229DEB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 12:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PaeKSWlJ+OQLXTQdeqVVAMYgauAjeNzXbe1tV2TY7sQ=; b=lYFscnh98kf5eh
	os6hErHGcodOTr7CWqr6BNurOYdPulhhdkjOLrYaq4w5BNuwmO6ERM3/3vtgTsgs4DvYok2mMylsG
	IVrRYzqr8ukkkWE1SA+ZX8lxxFbvncKZd5i6BR7CMN+FQby+ux/kYA1HDkCRT0VI+QfhltDKplo2S
	yDvDQyBQicmRD1bqzX7T2flFYQOHQ5eW7OsRhI1O9uQ6AUvcN2/YRWsuLrUj5Tl2soAe5b7Qq34I/
	eWMZIrWZID9kbC99wpHWzeP8GJP5NbNr9kXuBJwnEZnT09SrQTfHgguZzjq4+rn8MoLgB8icfzYsa
	/ki8j2/Zx6NfFjYRGWyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCEF-00EqGZ-0v;
	Tue, 11 Jul 2023 12:12:27 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCEA-00EqFn-2q
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 12:12:26 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4fb9fd28025so8388180e87.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 05:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077541; x=1691669541;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jDy7dHlG8mw55snATaE8leDnJkkCCM8iB+BLX9zgGAo=;
        b=vxXq6OQnnHTv5UKvvxLeU7f2QQGWO+rhZ1z5BVxqZF/VvX7fdLcJg/K0QFEGXgeqc8
         sxac9dxirDwWLram7+y1DVzbGH4uf/gfxZkKm21kMHFTfyxE95Mnh9xgcHOyLbz6qYL1
         h0cBsLVpyhlXpveHMk4yk8N/17CCg/njTMGHorgbJguzoH+zqY0Edt7npHYHItmIOUna
         8l3/L0wIT5Quj6knBD1qENLpuCMPzK3wDOTnEt1sQpUlL3MUwPFCyBUneeeSOUcDdl9A
         M+puQiKyqSERt1GULiMOYwnKNgReUgWwslZo8GjmeSTi6s0swA0ZCgR/iiDvLhSuj54w
         6RQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077541; x=1691669541;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jDy7dHlG8mw55snATaE8leDnJkkCCM8iB+BLX9zgGAo=;
        b=hwc65jTr0mhC+7nNd/3TX7egVSkbClcVqwq+ACvnxpaX7dUMAdW00GXZ52lkdMoWow
         bePh2azumr0TGXLoqDEVhR0ZK7wvVLUD/4Vv5eMlzouq0dFJBuDPyixBXdbaNQEw/L+w
         jMdWDV2aMZI15m+gnapcfhkOZwRLlMGsh1IvON+XwrqYlo3VKs4NRUV9HOGSL8/xstPJ
         TLOst70qviTROk650SCsTZoiMvD7faN3RPfK1KfFkDjVKwBr12wCtFkff4NfDRdj22vk
         0NIcNh/y56alfDoT/fmz80S44NXFWH5LsiecpSAVVH8RXnypUFcGFNUe+fU57FQGTAMR
         itBQ==
X-Gm-Message-State: ABy/qLbjxvmwuap7YQGTrhgwtvWv3EeTF6J+ueZleCd9mgJ6mgWulCTZ
	h8Ru8XWt1a+26OZ7gVegp458lQ==
X-Google-Smtp-Source: APBJJlHQ0ExF60LDzFQpwimlhl+fdeOGdxysoQkuC6HFjjJ1PJS4V39IMHE5izdNyJkWsJxQIp39/A==
X-Received: by 2002:ac2:5f63:0:b0:4fa:fc12:2bdd with SMTP id c3-20020ac25f63000000b004fafc122bddmr12455413lfc.40.1689077540923;
        Tue, 11 Jul 2023 05:12:20 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id b9-20020a056512024900b004fb738796casm299425lfo.40.2023.07.11.05.12.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 05:12:20 -0700 (PDT)
Message-ID: <e46c9cce-b4f0-cc56-13b3-7402fc0bdc81@linaro.org>
Date: Tue, 11 Jul 2023 15:12:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 05/10] arm64: dts: qcom: sc7180: switch USB+DP QMP PHY
 to new style of bindings
Content-Language: en-GB
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
 <20230521202321.19778-6-dmitry.baryshkov@linaro.org>
 <2d5b28d3-83f9-15c4-84e0-e6edb3f3333d@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <2d5b28d3-83f9-15c4-84e0-e6edb3f3333d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_051222_984649_4BB2A004 
X-CRM114-Status: GOOD (  14.15  )
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

On 23/05/2023 11:41, Konrad Dybcio wrote:
> 
> 
> On 21.05.2023 22:23, Dmitry Baryshkov wrote:
>> Change the USB QMP PHY to use newer style of QMP PHY bindings (single
>> resource region, no per-PHY subnodes).
>>
>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sc7180.dtsi | 57 ++++++++++------------------
>>   1 file changed, 19 insertions(+), 38 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> index ea1ffade1aa1..b07a49e6829a 100644
>> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> @@ -14,6 +14,7 @@
>>   #include <dt-bindings/interconnect/qcom,osm-l3.h>
>>   #include <dt-bindings/interconnect/qcom,sc7180.h>
>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>>   #include <dt-bindings/phy/phy-qcom-qusb2.h>
>>   #include <dt-bindings/power/qcom-rpmpd.h>
>>   #include <dt-bindings/reset/qcom,sdm845-aoss.h>
>> @@ -2718,49 +2719,28 @@ usb_1_hsphy: phy@88e3000 {
>>   			nvmem-cells = <&qusb2p_hstx_trim>;
>>   		};
>>   
>> -		usb_1_qmpphy: phy-wrapper@88e9000 {
>> +		usb_1_qmpphy: phy@88e8000 {
>>   			compatible = "qcom,sc7180-qmp-usb3-dp-phy";
>> -			reg = <0 0x088e9000 0 0x18c>,
>> -			      <0 0x088e8000 0 0x3c>,
>> -			      <0 0x088ea000 0 0x18c>;
>> +			reg = <0 0x088e8000 0 0x3000>;
>>   			status = "disabled";
>> -			#address-cells = <2>;
>> -			#size-cells = <2>;
>> -			ranges;
>>   
>>   			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>> -				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
>>   				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
>> -				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
>> -			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
>> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
>> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>,
>> +				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>;
> These are unaligned
> 
> Other than that:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Ugh. It seems I missed this comment (and your r-b tag) when sending v4. 
Please excuse me. I'll send v5 in a few days to reduce the simultaneous 
spam.

> 
> Konrad
>> +			clock-names = "aux",
>> +				      "ref",
>> +				      "com_aux",
>> +				      "usb3_pipe",
>> +				      "cfg_ahb";
>>   
>>   			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
>>   				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
>>   			reset-names = "phy", "common";
>>   
>> -			usb_1_ssphy: usb3-phy@88e9200 {
>> -				reg = <0 0x088e9200 0 0x128>,
>> -				      <0 0x088e9400 0 0x200>,
>> -				      <0 0x088e9c00 0 0x218>,
>> -				      <0 0x088e9600 0 0x128>,
>> -				      <0 0x088e9800 0 0x200>,
>> -				      <0 0x088e9a00 0 0x18>;
>> -				#clock-cells = <0>;
>> -				#phy-cells = <0>;
>> -				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
>> -				clock-names = "pipe0";
>> -				clock-output-names = "usb3_phy_pipe_clk_src";
>> -			};
>> -
>> -			dp_phy: dp-phy@88ea200 {
>> -				reg = <0 0x088ea200 0 0x200>,
>> -				      <0 0x088ea400 0 0x200>,
>> -				      <0 0x088eaa00 0 0x200>,
>> -				      <0 0x088ea600 0 0x200>,
>> -				      <0 0x088ea800 0 0x200>;
>> -				#clock-cells = <1>;
>> -				#phy-cells = <0>;
>> -			};
>> +			#clock-cells = <1>;
>> +			#phy-cells = <1>;
>>   		};
>>   
>>   		dc_noc: interconnect@9160000 {
>> @@ -2840,7 +2820,7 @@ usb_1_dwc3: usb@a600000 {
>>   				iommus = <&apps_smmu 0x540 0>;
>>   				snps,dis_u2_susphy_quirk;
>>   				snps,dis_enblslpm_quirk;
>> -				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
>> +				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>>   				phy-names = "usb2-phy", "usb3-phy";
>>   				maximum-speed = "super-speed";
>>   			};
>> @@ -3148,8 +3128,9 @@ mdss_dp: displayport-controller@ae90000 {
>>   					      "ctrl_link_iface", "stream_pixel";
>>   				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>>   						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
>> -				assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
>> -				phys = <&dp_phy>;
>> +				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
>> +							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>> +				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
>>   				phy-names = "dp";
>>   
>>   				operating-points-v2 = <&dp_opp_table>;
>> @@ -3206,8 +3187,8 @@ dispcc: clock-controller@af00000 {
>>   				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
>>   				 <&dsi_phy 0>,
>>   				 <&dsi_phy 1>,
>> -				 <&dp_phy 0>,
>> -				 <&dp_phy 1>;
>> +				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
>> +				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>>   			clock-names = "bi_tcxo",
>>   				      "gcc_disp_gpll0_clk_src",
>>   				      "dsi0_phy_pll_out_byteclk",

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
