Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32E4FCAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyS1aSmGZ2GRVnsFOny+4ZotVlmzLkHYjEDqEk58Wqk=; b=XDslPzZaXQqJvC
	YnMkPp8CtbzgX2j2trV8o7AtfGcLh7Hf5+6nQUwQUW8ipxay9GHp3Rgn7yyGa50DBQ8bcdMXLo6+W
	+GubR4PQ8vn2TKJnldLZwuTAHcjjK7a+WBH+0TYQ/5n11XITJhc+GR5yreaUYCRosp+6Ryapge3MC
	5HuEYUDZwV6w18gG8foiN8uHpMze/gCS1+Dpjr6JxrpMvDv47V+h0IsDF4nbnYnC8VB8FdjfqO/WV
	vKuz5L5FCVE1fCmrHiqGOzvgDnXVnU+6B8mgAwe2fRk7KBiwvm6z5lw/43vZH9/kK6PMXcN7zUNr9
	DDvhkSKwMRGbc5my162w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzboR-000000034s3-3jbg;
	Fri, 19 Sep 2025 14:10:11 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzboO-000000034oP-2oye
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:10:10 +0000
X-QQ-mid: zesmtpgz8t1758290981t77ee29e2
X-QQ-Originating-IP: c8xff3gMJrx6BoNwsH+6nJBZVwySXY19XV/90FS6mw8=
Received: from [127.0.0.1] ( [116.234.80.13])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 19 Sep 2025 22:09:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13887952541491144058
Message-ID: <C0056DA1635FC14E+7d3d6fb4-f43e-4107-baab-bbb871264c7a@radxa.com>
Date: Fri, 19 Sep 2025 22:09:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] phy: qcom: edp: Add missing ref clock to x1e80100
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>, Johan Hovold <johan@kernel.org>,
 Taniya Das <quic_tdas@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
 <6A43111ED3D39760+a88e4a65-5da8-4d3b-b27e-fa19037462c8@radxa.com>
 <qohctzmztibeoy4jv6unsvevdawfh2h3drrneo5wmbfkirokog@pfaz3vht5kjz>
Content-Language: en-US
From: Xilin Wu <sophon@radxa.com>
In-Reply-To: <qohctzmztibeoy4jv6unsvevdawfh2h3drrneo5wmbfkirokog@pfaz3vht5kjz>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NqN/wpVFVRYXTETqIpE/ShUxpxhxFZIAAZG5TEJxdn8+jwImr19vh0ik
	qXPnnemUr8vRPLvlxpUf7oVQ6trGgUadog3xRDslkBhICa8QW4wCchpoHB2SOspORTqmPeq
	KAzaFuOSa6mpe3xh2aRhgBKu62Z2zVEgjX9YDd1LOBchTyxp06jjAayWXhfvzYtgSC8cAmQ
	D15/pHX3A+qTfXnrfHPSEbwTR8oMVO38urrs8dlQoagk7Vv9F57S5VuPsBfeduvPCkibenw
	1VvgLifKmTDnt9I/+X5E5HszmCfTjjdLtRuIEjG8VeOHzFQInaOOStIVQQHu1jT9aYP05iB
	P+QKuhwIjAjf11WrGmRqGM5soSGrh9zzuRVzxZ31s4jsGz4xoWGcJu91rY0e8B0eKNaGwos
	IXNn9XjeXdODM7rEhPC1ZsiYxRcpXV8CNX4eE6Ra95cLj59lUSapyd+xBp9JV7GCnyBNo9s
	9ekmGWbZ8xqyuwxd79XR3fHuIWxlvEQN6y+GEqgJCpM4K3xsmoQB3U2bQiGPBRRdZKuNuh0
	92MMB6aYv/L6fp8rzuIlz5FvKJhbhKVShByd+nG0BTym95D+mmdmQMn/7HdfrkOxZeZ7JDq
	ZA45IIHCQMVK71nBIb0S/G4YystNtMyjNNgLV/aK6ZyEXy4v7p0V6iz494iOjjKCWYHhn8C
	LDlgUf52MA6EoIOgV5coqz0FvDCO+EKplexh2tO8CmG/36CrLqzuI6FjuYxuOfBvAtaDLXx
	R7nWj9R4y6KiXUoJISEQwxd21kTK3jYCQgSy3po4tSyNF9VZ4KHUOpQ//BiedCAjg89JqVA
	lNnp38L0Mk72yGZG7TyKUtPqgJvS2+Y2UmDMtvkVajyTQNEAbEomu043gdNjLqGyE2JWxBQ
	MWOGV8ROvCTuB2seEK8omKWl5qFZnBKNpOMYfIAe8L5Pm9g0HBkJ9bRpNvM/cky+h0P7sA3
	yeqXuZ3j1RfkAOCFKgJ/jmFJFajJeVKseA+4K7IK+97Fp553uY65wYiRiaOzs42RqlXA2a+
	vLwhtWGBYy+XVtDyEVzemc9mfsED6fBCn1E6BGtAQxeq9l+FJRVxK2sSsT/Fw=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_071009_224885_05386994 
X-CRM114-Status: GOOD (  26.73  )
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

On 9/19/2025 7:54 PM, Abel Vesa wrote:
> On 25-09-19 19:06:36, Xilin Wu wrote:
>> On 9/9/2025 3:33 PM, Abel Vesa wrote:
>>> According to documentation, the DP PHY on x1e80100 has another clock
>>> called ref.
>>>
>>> The current X Elite devices supported upstream work fine without this
>>> clock, because the boot firmware leaves this clock enabled. But we should
>>> not rely on that. Also, when it comes to power management, this clock
>>> needs to be also disabled on suspend. So even though this change breaks
>>> the ABI, it is needed in order to make we disable this clock on runtime
>>> PM, when that is going to be enabled in the driver.
>>>
>>> So rework the driver to allow different number of clocks, fix the
>>> dt-bindings schema and add the clock to the DT node as well.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>> Changes in v3:
>>> - Use dev_err_probe() on clocks parsing failure.
>>> - Explain why the ABI break is necessary.
>>> - Drop the extra 'clk' suffix from the clock name. So ref instead of
>>>     refclk.
>>> - Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org
>>>
>>> Changes in v2:
>>> - Fix schema by adding the minItems, as suggested by Krzysztof.
>>> - Use devm_clk_bulk_get_all, as suggested by Konrad.
>>> - Rephrase the commit messages to reflect the flexible number of clocks.
>>> - Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org
>>>
>>> ---
>>> Abel Vesa (3):
>>>         dt-bindings: phy: qcom-edp: Add missing clock for X Elite
>>>         phy: qcom: edp: Make the number of clocks flexible
>>>         arm64: dts: qcom: Add missing TCSR ref clock to the DP PHYs
>>>
>>>    .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
>>>    arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 12 ++++++----
>>>    drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
>>>    3 files changed, 43 insertions(+), 13 deletions(-)
>>> ---
>>> base-commit: 65dd046ef55861190ecde44c6d9fcde54b9fb77d
>>> change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
>>>
>>> Best regards,
>>
>> Hi,
>>
>> I'm observing what looks like a related clock failure on sc8280xp when
>> booting without a monitor connected to a DP-to-HDMI bridge on mdss0_dp2.
> 
> Am I to understand that this is triggered by this patchset ?
> 
Sorry, it's not indeed. I just saw this patchset and wondered if it can 
fix the issue on sc8280xp. Just now I tried adding the missing 
GCC_EDP2_PHY_CLKREF_EN to DT and gcc driver, but it didn't fix the issue. :(

> I don't see how though.
> 
>>
>> Do you think sc8280xp might require a similar fix, or could this be a
>> different issue?
> 
> There is no TCSR clock controller on sc8280xp, so it must be something
> else. My feeling is that this is probably triggered by the link clock
> source not being parented to the clock generated by the PHY, or PHY PLL
> isn't locked yet at that point, but I'm not sure.
> 
> I'm not able to reproduce this issue on my x13s.
> 

It only happens when mdss0_dp2 is not connected to a display during 
boot. I believe laptops usually use mdss0_dp3, and it's always connected.

I guess the Windows Dev Kit may have the same issue, since it also uses 
mdss0_dp2 as an external mini-DP port.

-- 
Best regards,
Xilin Wu <sophon@radxa.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
