Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C23C7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PDTzizr9lggdXP86D5cWWdeuvuhzZsGMst0EuRU1nDU=; b=ODTJ3x+rr2IXXZe9KNYJZqC7e1
	whAjRHgBp7hW0EZ4hZakSEH2Xt6YjA7kUp+fAqTtO8gcqVrdeYRc1cbNSA4uuO1hAuCXjxt3exhaY
	K0V+WIf+AGECXw1vTelfIN94qcpAErOYYansvGoqp+Hh5r5Qh38ysVeAPbB8NsipgS8djeJxA5lcH
	HBOiJ5DC6ClJ3GUR6iE0SyBej2+KRbufb5Zl4VOoViPo3Cp8mArUOi+7SGLZN3qs3GupOkRrX/W+E
	p8dg4u28Ytf1gtXH3Zh/q5eOw2vA4ix3kVeHFRcvIqdxVh6eOTtxp85SdSZJSSK7juUomHU1ILcjk
	ehIcYczA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjkl-00AaC3-1b;
	Mon, 27 Mar 2023 10:07:03 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjkj-00AaB1-0E
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 10:07:02 +0000
Received: by mail-lj1-x22f.google.com with SMTP id by8so8311460ljb.12
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 03:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679911618;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KFv/A1+uJn3CnMRGy/hasrUt1t16K7NodNwg6vSfcFk=;
        b=IdP5kqn82eh9bgkRp3Z2liP32XsdMsNhWaiV1xVFrkUnDDdOgJNqCKvX6cMc2pDu93
         8gg4nWR/Ttc0Jqyd7iyE8dKcXkHmJ//8kQ8H+j+/uumRJqeZWv8JyaNdX3M9uQFRho67
         CBQ78CZa5lIvoKLWTVM04LWj+WeE1MWEyYu2sgb7BBynDbRvPhx7bimOWJpHDd95kZ5f
         EQeCKKyfafSHXq21IZ8d88qrCrirv8e0RZzDTo9iEoN5UlWxCp7RvL6ivDdyy8ccr9Ni
         efODoystPOCp1d9pAyHkyVcVaxJm3eu94F6I3oimPlUcABp00yBeRTX55r7GsyYmMj/z
         oW+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679911618;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KFv/A1+uJn3CnMRGy/hasrUt1t16K7NodNwg6vSfcFk=;
        b=xIpYEtMi3+4tZDaDYV1LbQGp1NiHABqZPc0peMijCNrIsTO7oXo3nDyzAGCNKAVlRQ
         Tc7gsiH7XEyw/f5jPCeH+rH5i0g7jbraKmLnEl+qhDn4Z08PPP6kQxtoELQ9SnS1VqkS
         IIesus+4nS0R7jZbd48UwCjzSHNNIawufBZmN+9W3mR9mMEjFGFRE+jDyjz6S5qd+5Hn
         cWWvQ8qt87u3WajJA0zHm9Al91QTd2ln5XuEhgVF5qsbW7axEeNEQJCxvf5Dm66dIAdk
         QgWi0J9o1jP5AyTwLTNJhXlFTjB4udtxY+UjHKMzlarLveopLhHU3xuR85hADW93a/0U
         BUOA==
X-Gm-Message-State: AAQBX9ddNe7MK6zFGoHJg0Nf3RaAL7kGiDndOi4aR8V95+Bzep3RQfzk
	34uQPjU2KvLiQcJu2KbV5xpUNA==
X-Google-Smtp-Source: AKy350ZoyXzkePDlK0a2Zv/qtfAPQqmBLJtchcelEf+6jFDMmAb+gyVqvE+cz+ETMv+aPdHloSJs2Q==
X-Received: by 2002:a2e:9c01:0:b0:29b:964e:693d with SMTP id s1-20020a2e9c01000000b0029b964e693dmr3635550lji.42.1679911618103;
        Mon, 27 Mar 2023 03:06:58 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id j12-20020a2e6e0c000000b002a5faadb938sm156521ljc.138.2023.03.27.03.06.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:06:57 -0700 (PDT)
Message-ID: <522e9f28-bcb7-13cf-8da9-8db8a66193cc@linaro.org>
Date: Mon, 27 Mar 2023 13:06:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 4/8] clk: qcom: gcc-ipq9574: Add USB related clocks
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <ff189b0316ad524a7d8331bd89452112b60cdbb2.1679909245.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <ff189b0316ad524a7d8331bd89452112b60cdbb2.1679909245.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_030701_111768_ECCC7333 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
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

On 27/03/2023 12:30, Varadarajan Narayanan wrote:
> Add the clocks needed for enabling USB in IPQ9574
> 
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>   Changes in v2:
> 	- Fixed coding style issues
> ---
>   drivers/clk/qcom/gcc-ipq9574.c               | 37 ++++++++++++++++++++++++++++
>   include/dt-bindings/clock/qcom,ipq9574-gcc.h |  2 ++
>   2 files changed, 39 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
