Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F105F01821
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 10:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h+i3p2t75wAjFeJI0EQV4FctOF3ERdDZ1N/a3vieFoI=; b=jFwINOiosj4Qv4oFD/5yzeltyA
	9Y0NBe/dFOjhQFxjEtwCnuaiv6DbrUhW4D2Y9L9ZYDbPJogjoAcGNq9kp40J5podsJxW6BxpRH9rt
	wYkpgzdRAF0rGgfZelPOt2zpXzqjNtK+LwHIKSn/op9uUyuLPDYfgC1vHunmzddSOSyRHJ1aUn8Us
	ndsHXlEFWoUpZfLfAz404bEaWSEO2omcL9HDAVoNwtSoCBRH7V7kPeokDJgbjBgS22sSQUlRgAv20
	5F7XQyD6o6zroZBepvWIi97dbmpUnEoUQIsT9wtzf61PPS1ydNhA+GWC6FJFwp+R8J5kS6sS+D5YN
	o6i2LEBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySW4-00000003Twr-0PD2;
	Fri, 06 Mar 2026 10:34:44 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySW0-00000003TwH-3lh0
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 10:34:42 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4836d4c26d3so71752195e9.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 02:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772793279; x=1773398079; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vkkHpa9La9cb+M6Z0UUZsGUfrfqDbpK8tOGQLDZgWkU=;
        b=aEdZ3ltI0Oyxfr9r88H9qklvgLJMxcGQnZuzWR1BB2JGVNJNgX8LfQGZGltPBthzXx
         F87qYPtLPg9/Cw9pWdlEPPmP/juq9W5M3gS9D6aAzNODlxeM+k/i08foRWETlF2ZVZvr
         CLkxwzCuYgdke4/f3rqr2pE3YDAwmfzixWqVXFKMOcvuyS+gwjZKCLStANrF+dam1hRG
         sWrTfBTUFL4fXan/4NbEnYjp/TRqJ8fP9QWHfZpKErFSf1hUFjOnPt5ATBdatTuxM14t
         RjfVStbkO+G6vECz5KotPE6BROTGvIVwiROXL6zxUm5WZNzzh6qC1VmxDO9b9y3G7O4S
         tI3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793279; x=1773398079;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vkkHpa9La9cb+M6Z0UUZsGUfrfqDbpK8tOGQLDZgWkU=;
        b=m+ntQtebkK2ig8NEjq00nZL+sDOAkITYy0Y2Xahbo4fSEEg87233y6R8bHjpKLZ/XH
         iH1WTOPkGRl1WWSczvcIPNOY+TxSMigGK5EM9GVBnGvMLzTxof7aMQezfV2Spg+CSl+5
         JH+GF+WA6y9X6HfDKc7Z0t+/PuW+hgw1sWS+az0Tb4bhkNZO6No5XTFJHTUpVb9kekvE
         NKUQb+6ZVdh9qtX3A7ju2Kj59LP0+7Y2fMBevfReOZ/k5L7VP4z4gqjyktK8rG7EQFJc
         6uHmCEguJRjMrSKrtykkWcAnEoigseG8x/HwNzJbfda6MYqTk+Rk3Tm1YTZc0QYayPUQ
         eNiA==
X-Forwarded-Encrypted: i=1; AJvYcCUbkHFjvhTSDY2UlGO211MeQy/kwwn16uJ/dYZxIkFxKbDcevFDxDfIutM4vu8weFPLHsYWXOBecCc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlHMXuVpb8+U/Unt7U78fWPGms1l1QApW6ZQoGRYkYspc4DIIG
	Q35hYRHOtvPyiKVJ0dyhQ9CGlFblVpVUAyelNP8mnSFDxv8+1eShe11ez7OJrKBXjBM=
X-Gm-Gg: ATEYQzw0OM7igNdONywZL3UmI+SeXmWev6iEdq3cyJNuZIITKku3YtJbquwzVV+1rxi
	RXkGXd5uoBr2tInqZidYEfGK8KrfVr5hgGHu9wq0kqcSXFYX9+byR8/mjOwfbWo0nGc5Xr15Qr1
	z62mes/FXVi5xF8++8I1bWCHG+MiAtBBx4hjuQYf4KEIIRxvvhzpD8HrxxZzGIr7VuwFFoBASA6
	8CYvb7vMsnNtjAH5tfeVXJXcB4SUwg1u+SuZEOTf8hdi45CdhDOdU71CNGXvPt3X5YqUX+9vZbj
	B3jmDp2f+ClfeK6EabthtIZKTE2raHQnyt32YBJPeTAzq6XYNcSrz0PFK1DH+HiKpqTOB5/1GGo
	XcypUEGBQSlIyk+YtIHTtrkV75X+jLwVDdHMUbrOTEjp8qEb58Eae+mh5r2yr7W8wMpUQCrWKGZ
	tIx2SBP6nHpOVtqSw8TqTSIIz+SKXW4QxLIufLFdz8M1ZYSJRGTg9pmecWeCNWsu3ytzKr6Ar80
	Kbn
X-Received: by 2002:a05:600c:8184:b0:480:6999:27ec with SMTP id 5b1f17b1804b1-48526930cdbmr28598765e9.13.1772793278683;
        Fri, 06 Mar 2026 02:34:38 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527686bcesm39742425e9.7.2026.03.06.02.34.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:34:38 -0800 (PST)
Message-ID: <fb75023e-8fac-49c1-a8b7-2eb8b70fda3e@linaro.org>
Date: Fri, 6 Mar 2026 11:34:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane bifurcation
 support for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
 <aaqdv7Zx5AODzg6P@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <aaqdv7Zx5AODzg6P@hu-qianyu-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023440_981655_6DCB4DBE 
X-CRM114-Status: GOOD (  19.39  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 3/6/26 10:26, Qiang Yu wrote:
> On Thu, Mar 05, 2026 at 10:14:05AM +0100, Konrad Dybcio wrote:
>> On 3/4/26 9:21 AM, Qiang Yu wrote:
>>> This patch series adds support for PCIe Gen5 8-lane bifurcation mode on
>>> the Glymur SoC's third PCIe controller. In this configuration, pcie3a PHY
>>> acts as leader and pcie3b PHY as follower to form a single 8-lane PCIe
>>> Gen5 interface.
>>>
>>> To support 8-lanes mode, this patch series add multiple power domain and
>>> multi nocsr reset infrastructure as the hardware programming guide
>>> specifies a strict initialization sequence for bifurcation mode that
>>> requires coordinated multi-PHY resource management:
>>>
>>> 1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
>>> 2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
>>> 3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (bifur_aux)
>>> 4. Poll for PHY ready status
>>
>> I think we never concluded the discussion where I suggested the
>> bifurcated PHY may be better expressed as a single node with
>> #phy-cells = <1>, removing the need for duplicated resource references

DT requires strict hardware description, no abstraction for HW, so if there's
2 PHYs, then add 2 separate phys and reference them from the PCie controller.

On platforms where you want 2x4, then add 2 pcie_ports using 2 phys, on platforms
with 1x8 a single pcie_port with 2 phys.

Neil

>>
> I understand your suggestion would look like below. I agree that the
> unified PHY approach being more elegant from a device tree perspective,
> provide better DT flexibility and eliminate the need for different
> compatibles and dupicated resources between 1x8 and 2x4 modes.
> 
> However, this will include implementation complexity to phy driver.
> The driver would need conditional logic to selectively enable different
> clocks/resets based on the PHY parameter and maintain mode-specific
> resource arrays. There's also the issue that assigned-clocks
> GCC_PCIE_3A_PHY_RCHNG_CLK and GCC_PCIE_3B_PHY_RCHNG_CLK will be set before
> probe no matter which mode is used, even though in 1x8 mode or only one of
> them is actually needed. For pipe clock outputs, only pcie3a_pipe_clk would
> be needed in 1x8 mode while pcie3b_pipe_clk would be unused. For
> powerdomain, we also need to add additional logic to attach and turn
> on/off them.
> 
> While these challenges could be resolved, I'm not sure the benefits
> justify the added complexity.
> 
> pcie3_unified_phy {
>      compatible = "qcom,glymur-qmp-gen5-pcie-phy";
>      reg = <0 0x00f00000 0 0x10000>, <0 0x00f10000 0 0x10000>;  /* Both PHY ranges */
> 
>      clocks = <&gcc GCC_PCIE_PHY_3A_AUX_CLK>,
>               <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
>               <&tcsr TCSR_PCIE_3_CLKREF_EN>,
>               <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
>               <&gcc GCC_PCIE_3A_PIPE_CLK>,
>               <&gcc GCC_PCIE_PHY_3B_AUX_CLK>,
>               <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
>               <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>,
>               <&gcc GCC_PCIE_3B_PIPE_CLK>,
>               <&gcc GCC_PCIE_3B_PIPE_DIV2_CLK>;
> 
>      power-domains = <&gcc GCC_PCIE_3A_PHY_GDSC>,
>                      <&gcc GCC_PCIE_3B_PHY_GDSC>;
> 
>      resets = <&gcc GCC_PCIE_3A_PHY_BCR>,
>               <&gcc GCC_PCIE_3A_NOCSR_COM_PHY_BCR>,
>               <&gcc GCC_PCIE_3B_PHY_BCR>,
>               <&gcc GCC_PCIE_3B_NOCSR_COM_PHY_BCR>;
> 
> 	#clock-cells = <1>;
>      clock-output-names = "pcie3a_pipe_clk", "pcie3b_pipe_clk";
>      assigned-clocks = <&gcc GCC_PCIE_3A_PHY_RCHNG_CLK>,
>                        <&gcc GCC_PCIE_3B_PHY_RCHNG_CLK>;
>      assigned-clock-rates = <100000000>, <100000000>;
> 
>      #phy-cells = <1>;  /* Parameter: 0=PHY_A, 1=PHY_B, 2=UNIFIED_8LANE */
> };
> 
> For 2x4 mode (independent 4-lane PHYs):
> &pcie3a {
>      phys = <&pcie3_unified_phy PHY_A>;  /* PHY A only */
>      status = "okay";
> };
> 
> &pcie3b {
>      phys = <&pcie3_unified_phy PHY_B>;  /* PHY B only */
>      status = "okay";
> };
> 
> For 1x8 mode (unified 8-lane PHY):
> 
> &pcie3a {
>      phys = <&pcie3_unified_phy PHY_AB>;
>      num-lanes = <8>;
>      status = "okay";
> };
> 
> &pcie3b {
>      status = "disabled";
> };
> 
> - Qiang Yu


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
