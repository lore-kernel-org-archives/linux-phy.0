Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89BCDC77B73
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K14YJ9wSjnYzvMsGtBq+35AO9rdvpZ1xL58Pd7UB0EQ=; b=R58n70Zg93IXXi
	3r05x0qOoZNQYa+WHppCQVr6lgj7xbi7Pu627JJ0P0EJRsbChFkZfkjwYtOn7zSmN1hw+T7G103xz
	PJRJ9SmWnQZWNAQ1YpPTTF8t+5/+M4r337BXuSKgVlATcn6XMVftaCn9+ucOHOsFjjbfAzUFrwvRg
	iIZwL0MoRIynUVYNn08AQyLhpc8aRpxGqKhtmdwbsEfW301OW2LTqj89uS18EP0kyXptJdHepjpWt
	yAhOuPOIA+XdScKxoGcK7GDeqNQFT86xOFJigo1+5vNHgsvK7773zCZzMFkC1U2PbL+TQnb51DOBc
	KFVkA4iZPNV4YviDb0Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BdL-00Fntx-0f;
	Wed, 31 May 2023 02:32:19 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BdI-00Fnt9-0s
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 02:32:17 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so6048462e87.3
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 19:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685500334; x=1688092334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3itwahMmB1UBwkG6X+PepeOiTL6PAVjXLX5f9/pMwaU=;
        b=VFlwuGeO8w/pM/AeJMgyHF+FMli5xaj0d799vMfLPhQvJ2I2IJXMWdCE+asTMgrIPF
         or1ApbAZF89qVcpC02gu0Lj8ZBV36YKb+BmEmB2IVc/n72SoPo9YGlCoTEwsZMSlY27Z
         Tvdh2QDTo+hcJNpe93g0NTrMsT5aOqFKHSEG+VR5J4+qMD9GkO3VKUA+FnqNvd4Y23RF
         hyHDO4E3qbU3IADheDziPv4e7jrevSYdQAOmtRfzWAvQCxGp7qzbPkD6uYWvBr7kmSTG
         aUGQ782hCrsu6kvtYxOiumciZSFEH7xmFaz9oxeOSenMHbn8CTpBjvKpqkd3HHgyHhOw
         IsGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685500334; x=1688092334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3itwahMmB1UBwkG6X+PepeOiTL6PAVjXLX5f9/pMwaU=;
        b=iFzMAuC4ChfC6ZeCflIfWfjmNV8/sdHYFB9rXdjqaJXP3jZ1zWytOXnNokWvq2eBt6
         XqbZ3HZFE4StMUGaEKlUM+gJdM8A3mqr8pxzpJ+CMjoURKQOHZW5N7q/LkW4aIqU9It/
         7MnUFtdE8LeRy3i159a2h7pi8VQBMKC62BL8gLeGE2CTIo0fZEqhnHO5t33Wr1YNcIMP
         Vns+v7mqJHh0tA19MUzPheQ24BWTZNVR3QHru9Hs+bNiNfx4BmpxsLxsTJeo9FxpC5tU
         M02pS0cbsCmRyrdB2D3JoGA13VQSv2E0VnzGrVazSVphkx/pl+rYHy+0294GAWhMfhAx
         HiuA==
X-Gm-Message-State: AC+VfDxZ1PL8pIJgZkoSZs/j1eLAXYniyZDP8ztjDFSoOUbzW1R/UPCt
	Hg5ifMRJTrviSTvVYMwpXPg+2w==
X-Google-Smtp-Source: ACHHUZ7iWvIFNpO8N8bZ9ErNMxB2P1HCXawHic779aRrQlo4wiur+nVpGLwirk5d7dh8rYrBcPD2iw==
X-Received: by 2002:ac2:515e:0:b0:4f3:bb14:6bac with SMTP id q30-20020ac2515e000000b004f3bb146bacmr1742359lfd.56.1685500334110;
        Tue, 30 May 2023 19:32:14 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id o13-20020ac2494d000000b004f38a139073sm533010lfi.12.2023.05.30.19.32.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 19:32:13 -0700 (PDT)
Message-ID: <e5a7efed-0124-a9a5-167d-21542155c288@linaro.org>
Date: Wed, 31 May 2023 05:32:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop
 legacy bindings
Content-Language: en-GB
To: Krzysztof Kozlowski <krzk@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
 <20230521193635.3078983-5-dmitry.baryshkov@linaro.org>
 <c22c21d3-b34d-7d09-1302-f67adb9ac3e9@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <c22c21d3-b34d-7d09-1302-f67adb9ac3e9@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_193216_339378_DBA7EAA5 
X-CRM114-Status: GOOD (  13.56  )
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

On 30/05/2023 14:51, Krzysztof Kozlowski wrote:
> On 21/05/2023 21:36, Dmitry Baryshkov wrote:
>> The qcom,msm8996-qmp-usb3-phy.yaml defines bindings for several PHYs
>> which predate USB -> USB+DP migration. Now as sm8150 has been migrated,
>> drop the legacy bindings completely. No device trees use them anymore.
>> Newer USB+DP bindings should use combo bindings from the beginning.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC.  It might happen, that command when run on an older
> kernel, gives you outdated entries.  Therefore please be sure you base
> your patches on recent Linux kernel.
> 
> You missed at least DT list (maybe more), so this won't be tested.
> Please resend and include all necessary entries.

The resend was sent minutes after sending this series. But I'll anyway 
send v3 to fix the issue reported by Caleb.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
