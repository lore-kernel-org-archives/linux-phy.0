Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A510EC25B75
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jun 2024 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FZIltlcqjLRrmeYnz9ctloQCA5jCcb0MkiZAhuqwee0=; b=COIG/PATZn2hzrFVxiF4h2a8ji
	YeKO4rRuj+ZVUU5YQT71MglDkA1N2r+aZMBtY8eqJV0s/n4yH9HWwCVtaSoZmMJZxsWld/2Alc1gK
	hD/DTiPW3iLeXLVkyFtz9++epOmUgPaws6GgGedcL6RMo4AlEzVxuKgftGLvkV8/3+BzAH4tLmGs9
	W8X2rpoxU/uLLottjnaVZNgDJHaYGgfwjLtQwpouHPQDbLTXQwQjtIRoUhU+LDJBxXAz/7pbr/W3p
	dbugRAGDlMdpPhD0SIbxr+9q4jpTslI3UEUFqGN224phRqTidjZwjRQnL0cygR2WhmyLOhHCTreRU
	Nm7OYQ0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFDBn-00000009t4e-1GrS;
	Thu, 06 Jun 2024 13:29:59 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFDBk-00000009t3d-08ng
	for linux-phy@lists.infradead.org;
	Thu, 06 Jun 2024 13:29:57 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2eaad2c673fso13417251fa.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Jun 2024 06:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717680594; x=1718285394; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fvkU3UYNCCgjYLGJcSgfkTy9W76vquBkQdOXEHTQQXw=;
        b=ui2KIw8cEkR/jh06pP6L1+j7PuMHaKlNjtuvTn4ZqpKX0w3dgajtgRemYAdt3YS98u
         rm8/4rjB2HU6bgVNgO4Qt9225Ndj8zK53YNczj0PXKqevliMcju9rqvJccAxT6HKSw9m
         JaMkiuFZstLJ1faGJYDUjf4ttLMitfd5PGfH2F/JyCN/SSBJsL+sP9UEJFwfAAgHpTVE
         vu4uqWIYLr5APZArBjnsusIlrdgVpe/59lsfBSyiLG/DP8geG5xArqWuPyevx7wuwJSA
         J86ptgTNmOwXy+MZn/wNWvYiaIR6rzeM+fuE3EswdmLq/EKPs8G6g+zBoFgI9PZZKrhS
         uP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717680594; x=1718285394;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fvkU3UYNCCgjYLGJcSgfkTy9W76vquBkQdOXEHTQQXw=;
        b=ig3xBd/WqJ1FRO6mjatFAmHseNemWNmP+16v46Vta/WvNSQSGQC6zRznU5sQnWvnSp
         ggSYiMu391ZjaO25j5vldEe4cKSvAXRmc8NNBjag3YOqxL359bsbPvwL+02gGnnJ6rVI
         wgZzsi15TfJza4l3HkXKSFrcP+tkeCS50hqfwLU5F9taO5NyNiWCi6JT2gBoTYOdHDec
         1ywbdnR1Fx9KI+5zbEZ+vtZf5Dmy2wPwgLIAtpFX/ltEfviOJp7/539TW+SYQUlXH9Z0
         fPr5tWKFLZjMKst2Lk0FUsFR8FNXV4a1pZZCYZvrxztNZIM1LIeRC8Mql4B7nY4/Z6IB
         deJw==
X-Forwarded-Encrypted: i=1; AJvYcCUtfM8gC7SHKYC+giBOZK8KtFY+qvXYzM6obBoLWdOTGZAbU+44QBlWSt32RX4Vh5xsXBcaYDjfrqXQchhF2YYRtM1cggmeYcfxKHHPLw==
X-Gm-Message-State: AOJu0YwwVWeMCRoQ39kmjN24BHvQ/mX3Gs3RkPOeFHvfbOm/pWARHPet
	BJ6PfM7cc9rwWAOEZoAXm1/zYHAWbXymFTcYjh9Tte8n0o7cQaO8Z1vkXzj7Y0k=
X-Google-Smtp-Source: AGHT+IGihh4KKiZRsPsUimCWbL/IXXf+hS2Ri+W4mtukAS+JESrNRz3BD15VPN3J+yIaWrUosgA6mg==
X-Received: by 2002:a05:651c:152:b0:2d8:5fe6:820d with SMTP id 38308e7fff4ca-2eac797f1b3mr42093651fa.11.1717680593837;
        Thu, 06 Jun 2024 06:29:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:6d66:dc6b:6c6b:f7aa? ([2a01:e0a:982:cbb0:6d66:dc6b:6c6b:f7aa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5e989dfsm1572105f8f.80.2024.06.06.06.29.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 06:29:53 -0700 (PDT)
Message-ID: <ec78bd64-b1f2-48c1-b1ab-b7e2f0b9e24d@linaro.org>
Date: Thu, 6 Jun 2024 15:29:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/7] phy: qcom: qmp-combo: store DP phy power state
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-2-a03e68d7b8fc@linaro.org>
 <du4345tswno5pfeiux5ks5eo37bbydilvdzw3firnsps2ejgn5@avnoqzxbmzj7>
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
In-Reply-To: <du4345tswno5pfeiux5ks5eo37bbydilvdzw3firnsps2ejgn5@avnoqzxbmzj7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_062956_114270_5A6144E4 
X-CRM114-Status: GOOD (  15.32  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27/05/2024 10:59, Dmitry Baryshkov wrote:
> On Mon, May 27, 2024 at 10:42:34AM +0200, Neil Armstrong wrote:
>> Switching the PHY Mode requires the DisplayPort PHY to be powered off,
>> keep track of the DisplayPort phy power state.
> 
> How is this different from dp_init_count?

dp_init_count tracks the DP PHY init, while dp_powered_on tracks
the DP PHY beeing powered on by the DRM DP driver, those are
not the same state at all.

While testing, I figured that de-initializing the DP PHY while
is was powered-on by the DRM DP, caused the system to freeze and crash.

SO I've added this to track this state and try to de-init the DP phy
if still in use.

Neil

> 
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 7f999e8a433d..183cd9cd1884 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -1512,6 +1512,7 @@ struct qmp_combo {
>>   	unsigned int dp_aux_cfg;
>>   	struct phy_configure_opts_dp dp_opts;
>>   	unsigned int dp_init_count;
>> +	bool dp_powered_on;
>>   
>>   	struct clk_fixed_rate pipe_clk_fixed;
>>   	struct clk_hw dp_link_hw;
>> @@ -2685,6 +2686,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
>>   	/* Configure link rate, swing, etc. */
>>   	cfg->configure_dp_phy(qmp);
>>   
>> +	qmp->dp_powered_on = true;
>> +
>>   	mutex_unlock(&qmp->phy_mutex);
>>   
>>   	return 0;
>> @@ -2699,6 +2702,8 @@ static int qmp_combo_dp_power_off(struct phy *phy)
>>   	/* Assert DP PHY power down */
>>   	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
>>   
>> +	qmp->dp_powered_on = false;
>> +
>>   	mutex_unlock(&qmp->phy_mutex);
>>   
>>   	return 0;
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
