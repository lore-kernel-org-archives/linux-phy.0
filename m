Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 426C0CD1296
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 14:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1e7f3pMlG03JrBERQqnn/wKjKjTGgej7V+mZJSFJFqY=; b=a90bCMNdWI9vMw
	Mls18HF0K4+1kPGo13BtDRJszjmW8jTZMc4kXAF+VUleEccXBCkS+tANpWV/UCHu+s+gQpQlnblmx
	VPf4tD1cVFZp0iB6pQ3869O3GZ3x4YlBrR4SMdElsAJksaESjV2giBH8xgB3Req7nGcOGCqJrAk4g
	otRCPlVmt1MYcZ4D5Eciabbk3a/KMYERLLZgSpJABmT+gxDv66VLGO8lsGQUrgFKsg2l1L9zqLJ2g
	o/kxRA4Gmdb5tqNxu4Z6qrgrM/tUDOsJPmx2ex572BsVEG9Na62LMwPEosDaDKg8zdZZm9Dw5NU6C
	wu4hkPTwB8J99PdGDylQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt7DO-0000000ARgK-3UmL;
	Sat, 06 Apr 2024 14:40:18 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt7DM-0000000ARfr-1GOJ
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 14:40:17 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso3287527276.2
        for <linux-phy@lists.infradead.org>; Sat, 06 Apr 2024 07:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712414414; x=1713019214; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RJZ+wW1F0Udf2WYtlYShrGEiUXEZlJBVlEyGRMWnHC8=;
        b=HRj5dBnZtXkwMlEORZGT7b0h6fnzD3tb+ZAuLg3bwA/CTuzmKm88dOwcbIM2RMo4Ze
         1o9AkUWWZuEWlK5L6fzYuO2PmtsSMp93Tu9rBiZfTuvfZSspGtHw8MGeKWo3wJPgZdmb
         pz+ivZQd+CbRgNhwP5KlQ7T6F0mgfrvL+PKEwWF+geDvBaVKIBYswnkWvFdzdI7Es5TF
         vs6cFAZeEijQ17fkGoBPy0YSGRXB8U09MyvBVTAyc5yEVTVer3+I3dgK/fsw6crTPmw7
         UH88dI2YgRsoOsT8nS/AeAi+qh1m5nKUIxE7iFYVEZauf7B3G+gQo/DmXu1KLPQopeQe
         Ds0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712414414; x=1713019214;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RJZ+wW1F0Udf2WYtlYShrGEiUXEZlJBVlEyGRMWnHC8=;
        b=AgDnGf/LtM3dt/fIod5SU/HWylInkVavKOqyEeVHECkBZrXJdHGon3+1C13Nd0dPkC
         4jVn/BnU1pD6SPN0Z8CZ1Er/reKf58tIi5HfU5pqxSq+AnHY7r5Y8kZlfjkq+6DvT7P0
         Hkn4VAvoBt0zeHWzvD5EVaQI/4GtX42kBZDE2h7AGD6ZzF6WI8Fgvg/9UfbuRY6Nt9e/
         mj5YuBPj0GjujuKqjDIKKCf7sxtcDAElqfULiHpKbbEH/zHDKGUD+FeB0KlPq3V2hA6/
         ecvTOKnht+39xTNx2db60+08b4pnO3ruS0Fx9SXsWvK6ZKosjL9LQmxUUTE8iyhoEPw8
         iApw==
X-Forwarded-Encrypted: i=1; AJvYcCUmLvDLXd5O4fLYorOpAZ6Nztjm7TQmcvQ1S7IiHjTeQwR7/eWq5PKauxzbFNf7UEaohhxPRdPzzGtBMpTeB9ZBRzf3H4C950NB7z6OQw==
X-Gm-Message-State: AOJu0YyttnxO+xPpacTJFPOnCcAhUb4auoWWTuuAArT7z+MB88wAzqVQ
	LSP7oiKySYrBIbaiN8LNYwdSW11VIwt6jYYaeccOaD1bwZ2U1tYUOg16KQ04nYrsuCh69V6lE4K
	Bpezh49q4AS7Xa+I+JIeHJ+Z7yyh2eSPAUG1al4kbHWjYrLAm
X-Google-Smtp-Source: AGHT+IHHKJBvpms8GyKJP3zvG/nih1HHOJPLUjfhe7C8wwi+ufj1fM/ahAT8qyaXumJtQ9xSI13siiwrE40dsyyY+ww=
X-Received: by 2002:a25:ae5d:0:b0:dd9:2a6a:3bcc with SMTP id
 g29-20020a25ae5d000000b00dd92a6a3bccmr3754646ybe.28.1712414414202; Sat, 06
 Apr 2024 07:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240406-phy-qcom-m31-regulator-fix-v2-1-c8e9795bc071@gmail.com>
In-Reply-To: <20240406-phy-qcom-m31-regulator-fix-v2-1-c8e9795bc071@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 6 Apr 2024 17:40:03 +0300
Message-ID: <CAA8EJpoENH_4Rp38R8igf72fc3j=qAfVNOh5Qjr0y7_tmsyrAQ@mail.gmail.com>
Subject: Re: [PATCH v2] phy: qcom: m31: match requested regulator name with dt schema
To: Gabor Juhos <j4g8y7@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Sricharan Ramabadhran <quic_srichara@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_074016_370476_7590AB1D 
X-CRM114-Status: GOOD (  12.07  )
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

On Sat, 6 Apr 2024 at 16:37, Gabor Juhos <j4g8y7@gmail.com> wrote:
>
> According to the 'qcom,ipq5332-usb-hsphy.yaml' schema, the 5V
> supply regulator must be defined via the 'vdd-supply' property.
> The driver however requests for the 'vdda-phy' regulator which
> results in the following message when the driver is probed on
> a IPQ5018 based board with a device tree matching to the schema:
>
>   qcom-m31usb-phy 5b000.phy: supply vdda-phy not found, using dummy regulator
>   qcom-m31usb-phy 5b000.phy: Registered M31 USB phy
>
> This means that the regulator specified in the device tree never
> gets enabled.
>
> Change the driver to use the 'vdd' name for the regulator as per
> defined in the schema in order to ensure that the corresponding
> regulator gets enabled.
>
> Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
> Reviewed-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
