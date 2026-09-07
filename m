Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 579B9C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 06:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cj+zfPmDiTk29ITgokMaQiG/k7W9FNXy3jhGivMHET8=; b=GLvVZz4UHgphPfuHpmg5kLbC9Q
	xlPw/B6fPF+qUHa4ocoCTsBEMvHbcG9xCsPKTJw2jHU/R+Uwhoe9aRDwTXWyEXB7X3tAr0af/ZUVq
	uZqkuauQ6FadPyKEK5rX2JY365nHSsF7+kafs+R0BD0yWNV/Fb0xBgSY9eQbquxcGtSvJMFcA2phx
	y7QZGsJThU1YgHCp2/AuxHryGi/Suq7l/VEip0/Bv5nFqQWg2YViD8ynMRPJLtMjMactg7lUJcyPd
	wpEbF/vbrwWNGjvNqHPVa7k5phmQEDlsySgRDeQIZlHXOMkQt1cSp++BwkX0EKxkUUlgD14rC88+w
	8dtPsqMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3T1u-000000062jM-3loJ;
	Mon, 07 Sep 2026 06:40:34 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3T1s-000000062ij-1MTE
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 06:40:33 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-482dd6ee390so3572183f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 06 Sep 2026 23:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788763227; x=1789368027; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SU9/kaGiibd6mGhjdwN2A8ofGPaPGTIVHRIR2UuuB8I=;
        b=SZE0lTTn20ehC+aQzGzBwtPAjmI+yR9QDy41JkYsOoj8Nw/wLgzOK7v95doaIzVp/P
         2FvemDP8p2v1YqSe7n/Oe6wt0o8G9EF9pO/HAT73QU7SbHUvhVlZswd1esH37dab9n5d
         Gmu3X7ITBXc0O79Sghaprz17uJ4uavBOHfTx+4/dbF4BQE38Mn/8TMv7DlT1XcmUDVYZ
         XuUocO3normymngDsczSwjd+5nlp2N4u4AKf+6ERnFt/t/+rsYwHl1tjPk6urAKGfsYW
         1y7qjyKcCcAt73GvpJEmgJ5bKi5ZxKH3xJGy/FtyBVGQRkxqeFz/wMMa7wM3v1bLGpJX
         m16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788763227; x=1789368027;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=SU9/kaGiibd6mGhjdwN2A8ofGPaPGTIVHRIR2UuuB8I=;
        b=OH4RFRu/Tg/kJhjorMDOz76KbvxSGFaQpE/79MXxFT84H1hzDk+sZnqvu1zvLulyE5
         y60vFw4TtiN0614/5Vgb8WfGDQHjP0laPc1uW/8RR642aBg3PebVRnkJdwdbpcF2NmZH
         5fx5+zT7+ERkBf/TmlVJRKeVzfr/EG59ItCVni6V0e8sK3BxrQtLPglkllfN/qskBlq9
         usge8DrdBSejzhKpwd+i0AuDtL8vp8HG6ZFepZe7Yk2f228wFGyYsFnHlzTOmyVEVDLD
         S3tUB70lQp78IIen7Q/LiLp5T3uhnIxE4WGxvA66y2W3YtIWOfkNHg23fZv1wIRK8HXy
         maOQ==
X-Forwarded-Encrypted: i=1; AKwUvBzqzjmMTVOFuQgRkCwhzlXynjs0TI3a/w1137CKv20kniBJuCRN2ggl0fvtp/EEa3x641hvMZ1uBkQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nulidMds7DQq+ZVLug3LJkYOtgtFz49+S/dif1R9cNNq/Pm1Ug
	2z+LdT+uUqtNW19lKoHxgVjf/st3v1d8BAP6Wxr05y2jdqO6jMEG4kEGRNi3M48bLrw=
X-Gm-Gg: AYBFou1hScgqbm0qIDrNF3lL5k1TRqcZYOQeCjUEaKWezZVdlTuxak+TFvVeDiSSkAs
	R75ZdTuiHlSfHYly0Djjkx786ch1+DOPd3r+Go8usXBn9evHOqV6G/26SWvlLD9TvuCxknuaAFu
	I3lYp9ncfc2OHiRPApE8VGDjTiQBV62Yj9AlTsOT9oO2dLIiCLX90gcW+vc9tDJR2HBwnALDA9t
	T1NZar9azneTSffOiviLTAi371U7Yjrg14q1QxWv+pwrVoIoob1DALxmkzJpxwR76CM/oQmfmD4
	XvCtoT94AlsIaSYoAK4cXJBkuq1GuP57WFca763A27+VxGbP98aEiuaZlPL3lfsUSTGMcuOFFZ7
	A9JWxZRsL2wJCYddA339B92aXQz9MrI14ow9HzA19sgwC+pGLvuU7nzrVwVafbN8cRPnZLe5guF
	Hja9gHg99KjXgZgJ7+gVrVpqs5AFDztyKwZal2QRu519kMvqGiGDenyEAaC8mg9WhjUBSDO2A7i
	hUtQd9bWSEyVfBwjtgHrjKbWphYEnMyC05y63o8KKY=
X-Received: by 2002:a05:6000:1a8d:b0:485:8c16:a32f with SMTP id ffacd0b85a97d-4858c16a6cemr17808883f8f.36.1788763227160;
        Sun, 06 Sep 2026 23:40:27 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:74d7:9035:e283:b480? ([2a01:e0a:106d:1080:74d7:9035:e283:b480])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883be709sm26981837f8f.21.2026.09.06.23.40.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2026 23:40:26 -0700 (PDT)
Message-ID: <f0fc4211-2040-4115-9847-6e5cc3fe8161@linaro.org>
Date: Mon, 7 Sep 2026 08:40:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: SM8250 USB-C DP alt mode: DP AUX times out in reversed (CC2)
 cable orientation
To: BurningHoryd <sjunhyuk1@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 Vinod Koul <vkoul@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20260906225206.2994952-1-sjunhyuk1@gmail.com>
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
In-Reply-To: <20260906225206.2994952-1-sjunhyuk1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_234032_430274_A134B48B 
X-CRM114-Status: GOOD (  32.75  )
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

On 9/7/26 00:52, BurningHoryd wrote:
> Hi,
> 
> I'm chasing a DisplayPort-over-USB-C alt mode bug on an SM8250 (Retroid
> Pocket 5) board and would appreciate a pointer, as it looks like it may
> be in the nb7vpq904m redriver or the qmp-combo DP AUX path.
> 
> Hardware / software
> -------------------
> - SoC: SM8250, qcom,sm8250-qmp-usb3-dp-phy combo PHY (88e8000.phy)
> - USB-C redriver: onnn,nb7vpq904m (i2c, typec mux/switch)
> - External sink: VITURE Beast XR glasses, 4-lane DP-only (pin assignment
>    C, TYPEC_DP_STATE_C), HBR2, 1920x1200@120
> - Kernel: v7.2 base, plus three local qmp-combo patches that are the
>    subject of a separate downstream review (keep usb_init_count across the
>    DP-only mux switch / skip USB3 power on/off while already in DP-only /
>    the residual pipe_clk-in-common timeout hunk). The AUX failure below
>    reproduces with those applied; I have not been able to bisect against
>    pristine v7.2 because plain v7.2 has an unrelated regression on this
>    board (qcom_pmic_typec now requires connector/vbus-supply, which the
>    board DT lacks, so DP alt mode never powers up at all without a
>    separate DT fix).
> 
> Symptom
> -------
> Normal cable orientation: DP alt mode works perfectly - link trains,
> 1920x1200@120, stable.
> 
> Reversed cable orientation (Type-C orientation = reverse / CC2): DP never
> comes up. The DP alt mode HPD notification reaches msm_dp
> (msm_dp_bridge_hpd_notify status=1), msm_dp starts bring-up
> (msm_dp_display_host_phy_init, phy_init OK), but the very first DPCD read
> - SINK_COUNT at 0x200 in msm_dp_hpd_plug_handle - polls for ~4 seconds
> and never gets a reply:
> 
>    [drm:msm_dp_hpd_plug_handle] Before, sink_count=0
>    [drm:msm_dp_display_host_phy_init] core_init=1 phy_init=1
>    ... ~4 s ...
>    [drm:msm_dp_hpd_plug_handle] After, sink_count=0
>    [drm:msm_dp_bridge_detect] aux link status: 0
>    [drm:msm_dp_bridge_detect] failed to read caps
> 
> msm_dp then gives up and the connector stays disconnected. Link training
> is never reached. Stock Android on the exact same hardware works in both
> orientations, so this is a driver-side issue, not a board/silicon limit.
> 
> What I've verified (instrumented kernel, dev_info in the phy + nb7 set
> paths)
> ------------------------------------------------------------------------
> - It is NOT a state / refcount / mux ordering artifact: a clean
>    reverse-first plug (fresh boot, reversed cable plugged before any
>    normal plug) fails identically.
> - On the reversed plug, in order:
>    * qmp_combo_typec_switch_set(REVERSE) runs, qmp_combo_com_init(force)
>      writes QPHY_V3_DP_COM_TYPEC_CTRL = SW_PORTSELECT_MUX|SW_PORTSELECT_VAL
>      (0x3).
>    * nb7vpq904m_set() runs for TYPEC_DP_STATE_C with reverse=1, writes
>      AUX_CC_REG (0x09) = 0x1.
>    * qmp_combo_typec_mux_set() does the DP-only transition, com_init(force)
>      again (mode=DP_ONLY, TYPEC_CTRL=0x3) - this happens AFTER the nb7 DP
>      config.
>    * qmp_combo_dp_init() -> qmp_v4_dp_aux_init() runs.
>    So the PHY and the redriver are both configured for reverse, in a sane
>    order, before msm_dp attempts AUX. And AUX still times out.
> - qmp-combo has no DP-AUX orientation register that I can find - AUX
>    orientation on this design is entirely nb7vpq904m AUX_CC_REG.
> - Inverting SW_PORTSELECT_VAL and/or nb7 AUX_CC (making the registers
>    bit-identical to the working normal-orientation case) does not help -
>    reverse still fails.
> - Forcing repeated full qmp_combo_com_exit/com_init cycles during the
>    DPCD poll window does not help.
> 
> The one thing that changes anything
> -----------------------------------
> I added a knob to override GEN_DEV_SETTINGS OP_MODE in the nb7
> TYPEC_DP_STATE_C branch (it normally hard-codes
> GEN_DEV_SET_OP_MODE_DP_4LANE):
> 
>    OP_MODE = DP_4LANE (2)      -> DPCD read: 0 successes (many tries)
>    OP_MODE = DP_CC1   (1)      -> DPCD read: 0 successes
>    OP_MODE = DP_CC2   (0)      -> DPCD read succeeds intermittently
>                                   (~1 in 4 plugs, sink_count 0->1,
>                                   connector goes connected briefly).
>                                   Link training then fails, which is
>                                   expected since DP_CC2 is a 2-lane
>                                   op-mode and the source is driving 4.
>    OP_MODE = 3, 4             -> 0 successes
> 
> DP_CC2 is the "flipped orientation" op-mode. It is the only setting that
> ever gets an AUX transaction through in reversed orientation. That
> strongly suggests the nb7vpq904m SBU/AUX switch is not being put into the
> flipped routing for a 4-lane DP session - AUX_CC_REG alone does not seem
> to do it in DP_4LANE op-mode - but I don't have the full NB7VPQ904M
> register map to confirm (the public datasheets are image-only).
> 
> Questions
> ---------
> 1. Is nb7vpq904m's DP_4LANE path missing SBU/AUX orientation handling
>     that the DP_CC1/DP_CC2 paths get implicitly from the op-mode? Should
>     AUX_CC_REG be sufficient in DP_4LANE mode, or is another
>     GEN_DEV_SETTINGS / AUX register bit needed for CC2?
> 2. Is there an SM8250 qmp-combo DP-AUX orientation step that mainline is
>     missing (something the downstream PHY driver does for a reversed
>     4-lane DP session)?
> 3. Any known-good reference for reversed-orientation 4-lane DP on an
>     SM8250 + nb7vpq904m board?

This means the nb7vpq904m is _not_ responsible for the AUX swapping, other
boards have the wcd9395 or the fsa4480 in the middle to use the AUX line
for the USB-C Alternate Audio support, and does the swap.

Could you check in the vendor tree if there's any reference to those ?

Neil

> 
> I can share the full instrumented traces (normal vs reverse) and test the
> register map if someone can point at the right bits. Happy to turn a fix
> into a proper patch.
> 
> Thanks,
> BurningHoryd


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
