Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9565BCA0EDA
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0c3IIarP30i4HmvkktxnMhb/ABFy+CkV0DxzyecKDNo=; b=4KZzO+071NIHggq51kMeQwDIAF
	7SfGtH8XdEX9LKcYRsHsSPcU0xf7efGGBXUaGo3WqEyk4grXj+b64CrE5TsF6A+kquZJPGXhzRCwh
	Ibs57ASHP82+TTpj3EcWzYq9qmHljV1F3r4UwGh5BcUZp1qs2e6SOOMdtDPU8CLamqLl+Io8YFSaj
	KUXZnazKhuqIXVekMGQSDb0ISqDxma/xFJveyTdupJLQRXd3Rxi+Wi5nQaWJa8LCxrTSU6ZsGLlqo
	Yz6YToGjhU4AL5xIqwEE4b05Qsc9Va+Hhoy1RH3oTmzMH3AsxBvBKD02Kgw9DWNDsOfU84DsPE+np
	ZfA3A3IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ule5J-00000009XTu-1Daa;
	Tue, 12 Aug 2025 01:45:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulXq1-00000008rWn-2l05
	for linux-phy@bombadil.infradead.org;
	Mon, 11 Aug 2025 19:05:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:Reply-To:From:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description;
	bh=NZZ4dukWfnrzGm5DUtUwAHWHllsDgcftC3XLB9SWVHU=; b=qYdxJDtvAUB2wBaHdTrhV+2WLR
	7yHPpXUvQWimf9z6oz6hutn/73Fs46trJ9BFkqigtwkwOrKaFRTUprUuHaIINatUEkUk9wPf75VrA
	EqmOiXO3GMXJgQE0B0FhCjRf1v+6gX49TQSG/gLtNxTuzcSGMga/27O5Xc0FA0VZQC3S0SARqqO0Z
	yG2qYHJnzVZX0HIZfaPIJVHtSQ2OryPCIIecJ2RiREiGuJAiTMWdzaWpST2yPeUNGDYKnEdHJvKXR
	aoqFBKiUoIcntHORtSYgRsHXBdOXa6dSZwX427JfPOICwxlyxPpUyWgcKVPb1LFPDMzkrTDHzqupl
	yEstqFig==;
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulXpH-0000000FUIE-2QXY
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 19:05:32 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3b90ab438edso1479152f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 12:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754939088; x=1755543888; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NZZ4dukWfnrzGm5DUtUwAHWHllsDgcftC3XLB9SWVHU=;
        b=skPMEr12RsPSP89aJxfVlByVeQpdlmMKTjpXLYgjQ+8nEbdKfT40HatjavV/Tvp+ts
         Ymwxr1Z3eDelPqK48+C8IHZY3wf+LJlPpRbUOJ+HtIjlBRREWE2vq4Ls+fubl1bZS7Tx
         K3OpiZLrZsVI2Md32v2DyRsJU5vtt/6VwUA8g55I+dNFnfQRPVb6AIxEbDukTcPX0T39
         SPWNdmbhiw0TIhyI+Fx8hGlc4xdJY46Dht0XMRKfFV2txg42Bx3pkqS4j2EDcaEHt9J7
         R38HRSpqhMDuR7tp8vaYY5W5k6dwA1m+FIKYzdd4e5txcBQ0StYlNm6ekA0SurhOI2sI
         5B/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754939088; x=1755543888;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NZZ4dukWfnrzGm5DUtUwAHWHllsDgcftC3XLB9SWVHU=;
        b=aWxpocoVidLPpQGhOTTZm+A7pFH1oODnCIHE5sxaLSEdFKvVauhKPNLxLhxBXqAjnh
         QXQ4205Fx1V9PyvWc6hbrqvQPUPHWgfAESNxHPoKlJYK6mdGH2ULl3OFwzSSmSUnqWXD
         US154eVOAwtrxygZURlk+Y26WV3B9asmMQNY//ydiOuPHbSh2DuJ/uvqcNgQO3umFBrs
         lorFRMDpz3e1pljhQhgdGn4EHR3ewCP5rbQXNp+9bvz+UL47Xi3YgoyJOT+B9PUUZ1sc
         H439ASMdifWwb0wb6RaR7KY0Ct4AJQJZsITg9H0C9gAJ7bkN3Ns3QRY00kw6lA4IUVTL
         EQqw==
X-Forwarded-Encrypted: i=1; AJvYcCUiBJHA6OaLII1zrz3H9qElLbyRHTU0mI4LJAwsGSJwRi92F64n2FtNGxdwthfQb9VdXJEow57sKfE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzx0Ny1F1z2VQB+6Gbdgi5fiKQIs9we9M1IthkDkCP3wea2tMmF
	JLN7mKVdmUyp0Frn576Y16UW5JDpdCClPRWMU4ZaH9gDCfevlEHmGF5kb8NoOJkTelQ=
X-Gm-Gg: ASbGncu/ZdZNZnhA6lN5EQMVlTeZ8wwAclTVG7r/6+mEzuxqYv0NDelBgrmOI5Xmi6z
	HHlSokK3YXluBp/0hprBDtnUOvSfOufaDHoCnhPyOiv0Y15da9UP6RUCXrxRAuboVc//6E6Zl6/
	7G/RqBPJSzK9gB5lQKYTLTaMfZrYoHqSMapTdXxsuAzlqy9egpUWRfV1c9HvbFis4SHut88ere4
	JFJIrWmrgrnvSda+1iJrP6Bhe8ZDsYA4/quRfDn/86Su5A0KVF4NpnxPSlR9WTUZ4RBdCxASbA5
	KYZ5ct9WcUqdME+tc+Y45e5PBfLAC9iPx/BUhAPAuvvEDKdsEHsyhRVyKLAKQN4hx4NIQ84ZMwH
	4gDHCo1EiIfZHYgngN5T1VoBsPG6BW3UnBnw3kSt4VghmU8q/WphiTKO8AE0+W/vaSTXUI85waO
	3OoaOPMRhEwg==
X-Google-Smtp-Source: AGHT+IGNyTELrMm8IxX2rL2JOAtkoqeNSDKaW9RX/7J+QSJpvnGTggjn4BTNIs5nO2xxLGv7gxVaQA==
X-Received: by 2002:a05:6000:4282:b0:3b7:9c79:3293 with SMTP id ffacd0b85a97d-3b911015717mr614457f8f.58.1754939087798;
        Mon, 11 Aug 2025 12:04:47 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b0fa:b045:4b82:de09? ([2a01:e0a:3d9:2080:b0fa:b045:4b82:de09])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458bb04c612sm384638515e9.0.2025.08.11.12.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 12:04:47 -0700 (PDT)
Message-ID: <1ab2f4f0-94e5-413b-a87b-190b288b5f32@linaro.org>
Date: Mon, 11 Aug 2025 21:04:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
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
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_200530_737151_4F623E68 
X-CRM114-Status: GOOD (  25.59  )
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

On 07/08/2025 18:33, Konrad Dybcio wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> The patchset also includes bindings changes and DT changes.
> 
> This has been successfully tested on an SM8550 board, but the
> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> as expected.
> 
> The DisplayPort 4 lanes setup can be check with:
> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> 	name = msm_dp
> 	drm_dp_link
> 		rate = 540000
> 		num_lanes = 4
> ...
> 
> This patchset depends on [1] to allow broadcasting the type-c mode
> to the PHY, otherwise the PHY will keep the combo state while the
> retimer would setup the 4 lanes in DP mode.
> 
> [1] https://lore.kernel.org/all/20240527-topic-sm8x50-upstream-retimer-broadcast-mode-v1-0-79ec91381aba@linaro.org/
> 
> Changes in v4:
> - Default to USB3_ONLY if there's no DP SVID (Dmitry)
> - Pick up tags, dropped T-bys due to the above change
> - Add missing submitter's sign-off on some patches
> - The odd 4-lane-DP + USB2 case remains unhandled for now, but it's
>    not a huge deal, see:
>    <c2f2ba36-1a25-450e-99b9-79aa4fd4913d@linaro.org>
> - Link to v3: https://lore.kernel.org/r/20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com
> Changes in v3:
> - Take the series from Neil
> - Rebase
> - Rename many variables
> - Test on X1E & X13s
> - Apply a number of small cosmetic/codestyle changes
> - Remove some unused variables
> - Some smaller bugfixes
> - Link to v2: https://lore.kernel.org/lkml/20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org/
> Changes in v2:
> - Reference usb-switch.yaml in bindings patch
> - Fix switch/case indenting
> - Check svid for USB_TYPEC_DP_SID
> - Fix X13s patch subject
> - Update SM8650 patch to enable 4 lanes on HDK aswell
> - Link to v1: https://lore.kernel.org/r/20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (1):
>        phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
> 
> Neil Armstrong (5):
>        dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
>        phy: qcom: qmp-combo: store DP phy power state
>        phy: qcom: qmp-combo: introduce QMPPHY_MODE
>        phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE
>        arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set up 4-lane DP
> 
>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   7 +-
>   .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 179 +++++++++++++++++++--
>   3 files changed, 170 insertions(+), 22 deletions(-)
> ---
> base-commit: 442d93313caebc8ccd6d53f4572c50732a95bc48
> change-id: 20250527-topic-4ln_dp_respin-c6924a8825ce
> 
> Best regards,

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Lenovo Thinkpad T14S

Successfully got 4 lanes working with an USB-C to DP adapter with either orientation:
	dp_link:
		test_requested = 512
		num_lanes = 4
		bw_code = 20
		lclk = 540000000
		v_level = 2
		p_level = 0

And 2 lanes is still working.

I'll test on SM8550/SM8650 later this week.

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
