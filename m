Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E2BC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 08:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QPeOVc8avc6XAO7BxXdQGSGqIrPUNUkiQE64WFMOr2c=; b=wvNqrtXVtec4eRXjqpfqqTWqDH
	eKB4FVov+dMDybAznm3RJ+NzMLbhRt+EyAKENxeXNZokkPhNlctMz/DmELn1rCnkVN5fUyEew95Ub
	/nrUMuL5RtjUri7GEj18dvo0th5QgDFWToEiWJjt9NkoUMcmoJlzYY4VKGTGyS0+sEa8u+uSq/Nct
	sYlo8VQnE7tgMS76EJn2jrLmmcKr58NLCEGFA7bW3Cw+tjwdiP4TaBLrrX3HPldBaNG68ykxZewSi
	UMtewkYAr2IKbMbClrWQ8B/T8LS8Sf9h6UAlRZT2WnLF7rTzbM76eu7qYY7qfp5gqdfV/M7f+6t/M
	m+j7zYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neCMz-00CkB1-7U; Tue, 12 Apr 2022 08:59:29 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neCMd-00Cjzg-4z
 for linux-phy@lists.infradead.org; Tue, 12 Apr 2022 08:59:08 +0000
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-ddfa38f1c1so20077374fac.11
 for <linux-phy@lists.infradead.org>; Tue, 12 Apr 2022 01:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:user-agent:references:in-reply-to:mime-version:date:message-id
 :subject:to:cc;
 bh=61Zhp6cmoUliim9YwiwcZpLzWn635tX3xmuezZ/XE1Q=;
 b=i+E8+24eJSPuwFpWwnhwRcMosCQtTEQoU0qVumPFd1B/5vOrb43OnnM06scRAF73Yq
 oMByED8vyfj7h/juyKz0L3ed4WqHpCgSlskOcx+kVCwtlWgCiSRQA57g1AuGyhRftLkn
 PMcblX+TbX+MHeKj3cpATLc7zfvBTrR1JonUwOgFtW9kUMKobrEyLRFKbEi6WgtAtS6n
 FCB8ilN1nAxUZedW0P+Azc/J+6dpMpBO/s4qN2MMBBKOQNBC+cNRVDAa2Xi5cUNXXxIm
 UJfzvicRT62Wq64zodMNVExN+Gzy0MnFtlZGEVwjmhUqQKDk5bd3GuHqulcLVnv1AYsL
 SMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:user-agent:references:in-reply-to
 :mime-version:date:message-id:subject:to:cc;
 bh=61Zhp6cmoUliim9YwiwcZpLzWn635tX3xmuezZ/XE1Q=;
 b=qnjwN32HCkq9vIVt0HPOqD8KsXbGbwXgjZ2/v7HGSLi57rD8j/6Fk3k+JOFr30XtJP
 Ifx0ulfPHflR0g65BQ4rfqV5RoWV0tc2KaUA+Er1YcDkavsckiHt6x8Pe97+0wSJEN5L
 9dOV0GZrGIyV2DApHPER7mhuphTidbDwAAFGGpkCJtRxCTL0EIX7BYMHwmWP7U7Os4YE
 KhxOLdC/2ETgNb5X3POOGXUqvhYfisfgycWheWN8R2YdwFtzqauVBHZdt10jxxHqigLl
 p19alqOKRjN6zfKzPv2Iq9yjrAYWmy63nBoS0tio2vEMAuCZxSmTZDlwxIBsiN1mNmqk
 myvw==
X-Gm-Message-State: AOAM530hK/TWAq/UMN/imju8S4wu9YLKm/qjz0x0bk9Y1YjHqrV9ctTe
 T2O6PtunQzY+49t2c4wWY+0f72d7103MTHTt+aJZ8w==
X-Google-Smtp-Source: ABdhPJzgcHEvPZCp6gdbg7kDhJKlxditkMSAtxr85wga0tldVXhcDC3GVMdHj7CuZ6MWQrtRrZ1EySnMvRiS1vE8OqA=
X-Received: by 2002:a05:6870:f21a:b0:dd:9bec:caf8 with SMTP id
 t26-20020a056870f21a00b000dd9beccaf8mr1592268oao.78.1649753944968; Tue, 12
 Apr 2022 01:59:04 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Apr 2022 01:59:04 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220327223927.20848-1-granquet@baylibre.com>
 <20220327223927.20848-7-granquet@baylibre.com>
 <33212024-ae93-32c3-7890-09006057ff49@collabora.com>
In-Reply-To: <33212024-ae93-32c3-7890-09006057ff49@collabora.com>
MIME-Version: 1.0
Date: Tue, 12 Apr 2022 01:59:04 -0700
Message-ID: <CABnWg9sckU58Ga-qUgd+pk2M75H4=XZyAyP69e5QJP0+dvsusg@mail.gmail.com>
Subject: Re: [PATCH v9 06/22] video/hdmi: Add audio_infoframe packing for DP
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 vkoul@kernel.org, 
 airlied@linux.ie, chunfeng.yun@mediatek.com, chunkuang.hu@kernel.org, 
 ck.hu@mediatek.com, daniel@ffwll.ch, deller@gmx.de, jitao.shi@mediatek.com, 
 kishon@ti.com, krzk+dt@kernel.org, maarten.lankhorst@linux.intel.com, 
 matthias.bgg@gmail.com, mripard@kernel.org, p.zabel@pengutronix.de, 
 robh+dt@kernel.org, tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, markyacoub@google.com, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_015907_238752_265A444F 
X-CRM114-Status: GOOD (  13.34  )
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

On Mon, 28 Mar 2022 10:09, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 28/03/22 00:39, Guillaume Ranquet ha scritto:
>> From: Markus Schneider-Pargmann <msp@baylibre.com>
>>
>> Similar to HDMI, DP uses audio infoframes as well which are structured
>> very similar to the HDMI ones.
>>
>> This patch adds a helper function to pack the HDMI audio infoframe for
>> DP, called hdmi_audio_infoframe_pack_for_dp().
>> hdmi_audio_infoframe_pack_only() is split into two parts. One of them
>> packs the payload only and can be used for HDMI and DP.
>>
>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>   drivers/video/hdmi.c           | 82 ++++++++++++++++++++++++++--------
>>   include/drm/dp/drm_dp_helper.h |  2 +
>>   include/linux/hdmi.h           |  7 ++-
>>   3 files changed, 71 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/video/hdmi.c b/drivers/video/hdmi.c
>> index 947be761dfa4..5f50237554ed 100644
>> --- a/drivers/video/hdmi.c
>> +++ b/drivers/video/hdmi.c
>> @@ -21,6 +21,7 @@
>>    * DEALINGS IN THE SOFTWARE.
>>    */
>>
>> +#include <drm/dp/drm_dp_helper.h>
>>   #include <linux/bitops.h>
>>   #include <linux/bug.h>
>>   #include <linux/errno.h>
>> @@ -381,12 +382,34 @@ static int hdmi_audio_infoframe_check_only(const struct hdmi_audio_infoframe *fr
>>    *
>>    * Returns 0 on success or a negative error code on failure.
>>    */
>> -int hdmi_audio_infoframe_check(struct hdmi_audio_infoframe *frame)
>> +int hdmi_audio_infoframe_check(const struct hdmi_audio_infoframe *frame)
>
>I agree with this change, as hdmi_audio_infoframe_check_only()'s param is a const,
>but you really should mention that you're constifying this one in your commit
>description, or do that in a separate commit.
>
>Either of the two is fine.
>
>Regards,
>Angelo

Noted, I'll add it to the commit message.

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
