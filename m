Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFF88C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 14:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NL6G4LS93342BBtdV1HUztp5VYknN9MU2pFYBE93PPg=; b=igNCwo/1PCBsmW
	D/Scw255tyfbkH5EVFufPbbfibPvZ3jBK/3/nST6cOGERVzxCdIBIczqEJwmskCjd2U1GALBOjsh7
	HeNIIJcZBArk3tCRX3LpX/wkpc40zcUvDGgWixzdvh7otMNdOMle3rch2eSkDt5Fa8yedMMStlSsf
	o6uGV7/tEizE2zWUl5+deCnHDat5/v48FJMrf2KG+hH2bgwflwUSs+foqZkK89VueSs/V0npWd6Z5
	ZkLPeIvYwlZNWhP5n7DpG3cDQag31zetN7DWBe3W1WqjLt6c3Z9NtwkeI3BPpxVuULUSKAPdwbLnF
	1NL5ljjGKyQIHn7Ej97A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFrf-004PyK-8n; Tue, 11 Oct 2022 14:04:11 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFrc-004Px1-2p
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 14:04:10 +0000
Received: by mail-lf1-x132.google.com with SMTP id d6so21224307lfs.10
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 07:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=miXLZk8v5YqNNtiDLYh+RE8Lp+zqisULlUcCYgeHoAE=;
        b=VCTokd2xjoi7u4WGZYNZlVC3KvGj/Zwa3YIctwlsTfta5SBxhK8l1EBxyOSAHZbYqv
         /0Qr3SMo1BiLWJ5q1EWD/DOmKxe6otD2Q46i3M+BrNWNEm7jOpf0GH4CdPD+Se98xXmJ
         Fdk4PAyxKXgHXouIdi+m6U6o7dIhjSuTNcV6aHEyG/f9Xl22sGl5qMdhDrduIFxfTe9P
         B6g21isG/BFzLjKezb4vh5bD6ZT4zAwb1/L1wUTMU7jU6brqIvcQT6f88X6doY2liHG3
         8c96nICAbtsvRN2JowboqAXiIqylWZaSwBOYora7geeMWtOIvpqAkLfsOTDJAKNr5+B3
         LKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=miXLZk8v5YqNNtiDLYh+RE8Lp+zqisULlUcCYgeHoAE=;
        b=f/w7mt9dYgMwBrj0lgLA3h8R35ZziAo5akaKY07oDZlgVhrYvBIUIDeI41UGrAbAth
         tsiK+QU51IW3dAxCFlQbEiIp2NxqBCgTK6FZdB+pEu8wY/SkW98hMJD6r4G6sK9ALwi1
         +Q7EFJ+XVMXpTLWhijXltJwdziKKlv8ww51L5jCbo1vTgLDhYt4D+rX7U163i52YOtm9
         AzKII82hGiSgkLT+Rxw7DVAxDvCT+H6WhKZhZtt8y2F57nSM5KFmJczg6c3+4fIlwcL5
         LQl2nGmATxIlE3j4cZfyXv/T+xs6asz1VPN1Du4wtzhVaufsJfjzygLBSP+GbYl64WsJ
         09qw==
X-Gm-Message-State: ACrzQf0i0Rhy0U41+Yh3fFGv8BWex8V1aXwyf53iRpSB5h4twHFlYRcE
	6KgK17D0o/5P0hLNFUQN6G63q0ER8DmcPQ==
X-Google-Smtp-Source: AMsMyM5ltcAwdQHcdi8OnPxvv/cRJbPc0SAmnFJd7Ua6IjdfR1eSgoyRab2DlhLFc9bI4SQhvQwW3w==
X-Received: by 2002:ac2:4c18:0:b0:4a2:6dbd:97d7 with SMTP id t24-20020ac24c18000000b004a26dbd97d7mr8327795lfq.144.1665497045747;
        Tue, 11 Oct 2022 07:04:05 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c14-20020a19760e000000b004a031805c8bsm1872414lff.106.2022.10.11.07.04.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 07:04:05 -0700 (PDT)
Message-ID: <ebe1e26a-7335-29ac-4990-6b8fdb02ba7c@linaro.org>
Date: Tue, 11 Oct 2022 17:04:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 08/13] phy: qcom-qmp-pcie: drop power-down delay config
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-9-johan+linaro@kernel.org>
 <66261491-530d-c368-6cc8-daeef74fcbda@linaro.org>
 <Y0V1TIBySTPhYqX/@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y0V1TIBySTPhYqX/@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_070408_169548_3401CF12 
X-CRM114-Status: GOOD (  23.11  )
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

On 11/10/2022 16:53, Johan Hovold wrote:
> On Tue, Oct 11, 2022 at 04:46:53PM +0300, Dmitry Baryshkov wrote:
>> On 11/10/2022 16:14, Johan Hovold wrote:
>>> The power-down delay was included in the first version of the QMP driver
>>> as an optional delay after powering on the PHY (using
>>> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
>>> this sequence by powering on before initialising the PHY, but the
>>> optional delay stayed where it was (i.e. before starting the PHY).
>>>
>>> The vendor driver does not use a delay before starting the PHY and this
>>> is likely not needed on any platform unless there is a corresponding
>>> delay in the vendor kernel init sequence tables (i.e. in devicetree).
>>>
>>> Let's keep the delay for now, but drop the redundant delay period
>>> configuration while increasing the unnecessarily low timer slack
>>> somewhat.
>>
>> Actually, the vendor driver does this 995..1005 sleep. But contrary to
>> our driver it does that after programming whole PHY init sequence, which
>> includes SW_RESET / START_CTL, but before programming the pipe clocks.
> 
> Right, it does it after starting the PHY which means that you don't have
> to poll for as long for the PHY status.
> 
> It's a different delay entirely.

No-no-no. The 995-1005 delay was added guess for which SoC? For ipq8074, 
where the config tables contain the ugly CFG_L writes for SW_RESET / 
START_CTRL. So, it is the same delay, but added by somebody who didn't 
care enough. The original 10-11 delay is a completely different story, 
you are correct here.

Thus, I'd say, the PCIe delay should be moved after the registers 
programming.

> 
>> I think we can either drop this delay completely, or move it before
>> read_poll_timeout().
> 
> It definitely shouldn't be used for any new platforms, but I opted for
> the conservative route of keeping it in case some of the older platforms
> actually do need it.
> 
> My bet is that this is all copy-paste cruft that could be removed, but
> I'd rather do that as a separate follow-on change. Perhaps after testing
> some more SoC after removing the delay.
> 
> SC8280XP certainly doesn't need it.

I think in our case this delay just falls into status polling. We'd 
probably need it, if we'd add the noretain handling.

> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
