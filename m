Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80BF3D42B81
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 13:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEvg/hUErQYbQjXfDki860o05OjXMkscKGFXeMcWBnI=; b=AvNMYrKimNK/NU
	WdsGA2q6ylrMNT6pvcA8ZAW4jhcnKpp1Ad2GlDEsON2DdP1RuAgmVG/K4kK6R9R+3ZUI05EwceB3D
	6TqEEN6T+jD4W09mPCyzSbTnHOsiQAf3Zb4HuzWDUyVttHEJzi5oHLWpstXW/fITUBMdnrHlOqt1p
	D7Ii4NYDx3XPD7XLUBnj0h4iTSEt6cElNqwwmCoXPiRTh1H7RqV/E/BP6DIMSKBf0RSDLv+F0EHRV
	A5hhCKHMNce9G9o/6gVZPO3cUzywSMzxZdQ/19VatZ320/YP8YCoItkwiNXGoWhPtkIRlKmfR134Y
	uuM2qWRrxcD9AXYPhmbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tArEI-00000003dnd-0elD;
	Tue, 12 Nov 2024 13:46:50 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tArCc-00000003dHw-0VIf
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 13:45:07 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53c78ebe580so7214419e87.1
        for <linux-phy@lists.infradead.org>; Tue, 12 Nov 2024 05:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731419104; x=1732023904; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p8XhL/KO7ax4DYfSEQl2Gemn7CXDKPvYLisy0AOZrYc=;
        b=jaOvB6/QGlDDiFIHqmbQR9bwXDS+3iUyyL3Ao/ySdbN2IKNHa61VFpVc6uEptoMs8l
         nG6SZWAnrv80rq4p67JeIGB0w1kynHbPZt8GmDXHT7JJswxs1Ps/uTBJuX25doeZGRqd
         mlSVM9RmcrRbIwFGxJ/RkPFo1OUAj7w8EatsG4QifnSIEg7Q1qytmO8SkYjRK9Yhi3CZ
         nHLemWneb4rPBLw1/XMmOL4eywUOymJBufCuGxwJ85/QmYpehTYppJpP/HcIaiDV8iQA
         UGRnd3nSkYwpKI2AdGwR6WznbMojACgYt4NQhvHaNs3t7UzMyIbHO7tTbCbytd8Qokk8
         +nUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731419104; x=1732023904;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p8XhL/KO7ax4DYfSEQl2Gemn7CXDKPvYLisy0AOZrYc=;
        b=w+UZrlTeZFqpgiw8+eIg444LOTlWtLHBaenvTn7tiqA2Z2fz+q33NpcPgiukzpZdmA
         Lw9ybY/42Jqa6Nfzu8qA+E6TWIP2V1C5YpWAY8Ripn1SXAYJtvb9BkpLfCNhbhulTmef
         6+3Dev+6ITNcGr492Imj7SltEHVHgtOSAIUoNH15/A8Mx16qxx9R/2AIsPzoC+8gcTcg
         vEg26P7GmSp57nR9bpuGGJGhQKvTENGASrplN0CvyS9nNh7ZoOdndtwr8KxuwfoF57Y6
         frRqXIG+PV5RqacMGaiBFfz19MRbtggPPJb5Tt9xyJN8GJdzArHjggAlQTRFxYvhA5Y1
         0S5g==
X-Forwarded-Encrypted: i=1; AJvYcCUO149EtwqXgU8Y7UyFcRgAoB5OkW9z7Vty0iK+AYZkP/hWwbp/HHxMM5oPMpxBergz9XgSgl1KlI4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPYPKrfUPbU4X5Kz4WqeExaBn8AogqmwCcwZVzAtdZd39XvWsO
	YepnXIijUCtfXY+CIxQK1KOR+CWOd/0k004F7GU3a/CbvoBbBkby/8NkyfzZzh0=
X-Google-Smtp-Source: AGHT+IFAwO32Ncdw+qEGZ4aWRj0mcaaHcO3uY0rwX+jAaJsbwSik56EmV6ZmRwhhKG4oqdNuqcKamA==
X-Received: by 2002:a05:6512:124f:b0:539:ea33:c01b with SMTP id 2adb3069b0e04-53d866c91d7mr5071381e87.9.1731419103995;
        Tue, 12 Nov 2024 05:45:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d826a9c42sm1890161e87.215.2024.11.12.05.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 05:45:02 -0800 (PST)
Date: Tue, 12 Nov 2024 15:45:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	andersson@kernel.org, konradybcio@kernel.org, mantas@8devices.com, 
	quic_rohiagar@quicinc.com, johan+linaro@kernel.org, quic_kriskura@quicinc.com, 
	abel.vesa@linaro.org, quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 4/6] phy: qcom: qmp: Enable IPQ5424 support
Message-ID: <i6z3rplnp2awqwqlkpwwzgaweoxi5yi6jz6klveop7namcovns@q5aecu5mcb3l>
References: <20241112091355.2028018-1-quic_varada@quicinc.com>
 <20241112091355.2028018-5-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241112091355.2028018-5-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_054506_193051_4A2D9F0C 
X-CRM114-Status: UNSURE (   9.16  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Nov 12, 2024 at 02:43:53PM +0530, Varadarajan Narayanan wrote:
> Enable QMP USB3 phy support for IPQ5424 SoC.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
