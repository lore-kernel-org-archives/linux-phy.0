Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CF35C369BA
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 09:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvSLvQp+9h7b057XB9Bw+eKBBf7X1gb7XYBYiu099fQ=; b=AhH3Jwunnxh9dA
	LsJS4DiaAvQIeo41UBhYHv96cfURXTVvq4bpl5wNs+u6L/ArjUY1DWHlkS/Ryqzlp4N+VrYm5TMB6
	T+d9eK1YpDWa7DwQYBBD8z1P1xNDboKBjQHF/Qdyu0XNJojMfSf58neMRQQEFlmEdT5RDHge6WWON
	C+6L29CBslDe695KOJWO1AJ8psrhiO6B3jeibO9QQL/O+0T4WYCEIhLhx2fsF5jkMDKZOBQxN2Kcl
	eSnusysoS1Rkx4LTiTUwOJnbm++x+kOdCuoN20pNJXC3TzQ7PNJEuRyxXugVUVg7xlX2dOjfj8mn7
	D1JHphZ1vrJtIfZz3Tmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stObg-00000004ejo-41t5;
	Wed, 25 Sep 2024 09:46:48 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stObe-00000004ej7-2oXB
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 09:46:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8A30EA43DD0;
	Wed, 25 Sep 2024 09:46:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15EA2C4CEC3;
	Wed, 25 Sep 2024 09:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727257605;
	bh=wtn5+KuMLTAqeZweMoRuxkoCjg49C5loEg74Pkq8niU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rMl089XNFRAEGqGjifzGH4vHmkqYCn0PuSiSSxoa44g9uXf9m4QFeUwMFyWZ4/Jrl
	 RaWXD3u0L8Qt22vg1xvfKfhEXnEe51XdG2dZYT7Xw1P6J0/FadUCOm49X5dW6kf4zE
	 hT1lEuWPSW5mbij8dbwOKHzfa5Rhyr+ZhFoZ6OxzHE3IZeYZhDa2sRoSDqE7jqdSA0
	 8gz/HaruwpjM77EOo8nPk4GT+zFAAKpD8cMPuedCRqi+afrz3e5QVRuyl59+Rc3uXE
	 +tjJZ18viIKSWYX490NH6d9/dZcdd2dpWfj8j/G2Tee3pwbN31N28qqnWwHoIfyStT
	 leX5AWRIOWgAA==
Message-ID: <2731e17d-c1ad-4fb4-ab60-82ceafeffbaf@kernel.org>
Date: Wed, 25 Sep 2024 11:46:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
To: Konrad Dybcio <konradybcio@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Johan Hovold <johan+linaro@kernel.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 abel.vesa@linaro.org, quic_msarkar@quicinc.com, quic_devipriy@quicinc.com,
 dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
 <20240925080522.qwjeyrpjtz64pccx@thinkpad>
 <4ee4d016-9d68-4925-9f49-e73a4e7fa794@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <4ee4d016-9d68-4925-9f49-e73a4e7fa794@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_024646_810630_41EE0289 
X-CRM114-Status: GOOD (  18.00  )
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

On 25.09.2024 11:30 AM, Konrad Dybcio wrote:
> On 25.09.2024 10:05 AM, Manivannan Sadhasivam wrote:
>> On Tue, Sep 24, 2024 at 04:26:34PM +0200, Konrad Dybcio wrote:
>>> On 24.09.2024 12:14 PM, Qiang Yu wrote:
>>>> Describe PCIe3 controller and PHY. Also add required system resources like
>>>> regulators, clocks, interrupts and registers configuration for PCIe3.
>>>>
>>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>> ---
>>>
>>> Qiang, Mani
>>>
>>> I have a RTS5261 mmc chip on PCIe3 on the Surface Laptop.
>>
>> Is it based on x1e80100?
> 
> You would think so :P
> 
>>
>>> Adding the global irq breaks sdcard detection (the chip still comes
>>> up fine) somehow. Removing the irq makes it work again :|
>>>
>>> I've confirmed that the irq number is correct
>>>
>>
>> Yeah, I did see some issues with MSI on SM8250 (RB5) when global interrupts are
>> enabled and I'm working with the hw folks to understand what is going on. But
>> I didn't see the same issues on newer platforms (sa8775p etc...).
>>
>> Can you please confirm if the issue is due to MSI not being received from the
>> device? Checking the /proc/interrutps is enough.
> 
> There's no msi-map for PCIe3. I recall +Johan talking about some sort of
> a bug that prevents us from adding it?

Unless you just meant the msi0..=7 interrupts, then yeah, I only get one irq
event with "global" in place and it seems to never get more

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
