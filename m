Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DF9CEED609
	for <linux-phy@archiver.kernel.org>; Thu, 12 Sep 2024 14:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TPd3oE0YsMy9Sm8UZPM9R/RRxM64jF2WAAz7wnLvcc=; b=dBtnZSRGyiqvCn
	zntQs9R/fZPHbIfUbAK5L7WpM0MraqPZpdDegXFzoegn5wDP4Xk6mgL5ApW70BBxSLL2DOQn8BWSh
	JlLG8dVl63EfmCkQpu4Br1l1qwZpnUmhIS85BKuLeKIej8r7vBSJxvEx5syT2IR4mZ2CLNOJ82dAd
	yv1xjfsrEI+7aMbszV0XFxuUQHfvtONa0ZjABxl86zdLimTqKkNNX7Cq0sR6itJZ3vcdRB9FbljUR
	2hRAApnT1mlohbuJupz54rfG6Ih4uMPZg5axC/dTFmQFWGUG/Mxz6Ug6Bi167ckt1Cg7AiE2t9S1l
	8vpOG3+Kw4flcynWH2jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokcE-0000000DJtF-18Su;
	Thu, 12 Sep 2024 14:16:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokcB-0000000DJsu-44Ec
	for linux-phy@lists.infradead.org;
	Thu, 12 Sep 2024 14:16:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 322AB5C5ADD;
	Thu, 12 Sep 2024 14:16:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01140C4CEC3;
	Thu, 12 Sep 2024 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726150566;
	bh=fVIETZv+H9p1/it8eBQidsDxsQ++8d/hnRorBQfS3C0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=C5iivF/H28ePrgwhxHcJmm5659Weo5AOrMMA8JYewHHjPvLnFa1WK8qNA3N8PDkOQ
	 a+B+BDhF1/6uutnd7lfbpL7pQ/Lva37UDKBL9nFH5NS0kKxTz3BsKrkmz6ry8pZWq2
	 vcCGtfxmqeLEBCsXl5zT/gBAGAvPWfszDuEa9kL7xeSXmsmALu9SmW67RH9yqvZK09
	 KEOs3zgz97YFc4ieuqrxbdpL9STATh9GVf/0VA+4f+ZrjX2GYl4mAPTZaC7fKMd5Tv
	 GBIvWetuVlpCqFCzgDLCIntn+VXI+9mVe3azFPsfxvmIgVm+7Oh54tdOiieXRNWLJ2
	 uPBNa0b009Lzg==
Message-ID: <d5468dd2-0f81-4d89-a3bd-a546b2395ca6@kernel.org>
Date: Thu, 12 Sep 2024 16:15:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
To: Qiang Yu <quic_qianyu@quicinc.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
 quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com,
 lpieralisi@kernel.org, neil.armstrong@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com>
 <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
 <20240827165826.moe6cnemeheos6jn@thinkpad>
 <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
 <20240911153228.7ajcqicxnu2afhbp@thinkpad>
 <9222ef18-2eef-4ba3-95aa-fae540c06925@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <9222ef18-2eef-4ba3-95aa-fae540c06925@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_071608_130828_61795BA0 
X-CRM114-Status: GOOD (  14.62  )
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

On 12.09.2024 3:39 PM, Qiang Yu wrote:
> 
> On 9/11/2024 11:32 PM, Manivannan Sadhasivam wrote:
>> On Wed, Sep 11, 2024 at 04:17:41PM +0800, Qiang Yu wrote:
>>> On 8/28/2024 12:58 AM, Manivannan Sadhasivam wrote:
>>>> On Tue, Aug 27, 2024 at 02:44:09PM +0300, Dmitry Baryshkov wrote:
>>>>> On Tue, 27 Aug 2024 at 09:36, Qiang Yu <quic_qianyu@quicinc.com> wrote:
>>>>>> On platform x1e80100 QCP, PCIe3 is a standard x8 form factor. Hence, add
>>>>>> support to use 3.3v, 3.3v aux and 12v regulators.
>>>>> First of all, I don't see corresponding bindings change.
>>>>>
>>>>> Second, these supplies power up the slot, not the host controller
>>>>> itself. As such these supplies do not belong to the host controller
>>>>> entry. Please consider using the pwrseq framework instead.
>>>>>
>>>> Indeed. For legacy reasons, slot power supplies were populated in the host
>>>> bridge node itself until recently Rob started objecting it [1]. And it makes
>>>> real sense to put these supplies in the root port node and handle them in the
>>>> relevant driver.
>>>>
>>>> I'm still evaluating whether the handling should be done in the portdrv or
>>>> pwrctl driver, but haven't reached the conclusion. Pwrctl seems to be the ideal
>>>> choice, but I see a few issues related to handling the OF node for the root
>>>> port.
>>>>
>>>> Hope I'll come to a conclusion in the next few days and will update this thread.
>>>>
>>>> - Mani
>>>>
>>>> [1] https://lore.kernel.org/lkml/20240604235806.GA1903493-robh@kernel.org/
>>> Hi Mani, do you have any updates?
>>>
>> I'm working with Bartosz to add a new pwrctl driver for rootports. And we are
>> debugging an issue currently. Unfortunately, the progress is very slow as I'm on
>> vacation still.
>>
>> Will post the patches once it got resolved.
>>
>> - Mani
> OK, thanks for your update.

Qiang, you can still resubmit the rest of the patches without having
to wait on that to be resolved

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
