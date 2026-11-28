Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D2F606A31F
	for <linux-phy@archiver.kernel.org>; Sat, 28 Nov 2026 13:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MPUd5mG6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ovlav9f2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Pceqss7tSYgajcplyeGTcSPTSLNkLE3eDdmpY47bpCQ=; b=MPUd5mG6sCHr3eoDBZ55DJI4vj
	S500hthD/9MfpbGwZz22dpvRrTH+psAA5BRbCuzabC1zix2ra4hpeBYN4Pg/00rdyT7+H487aI+X9
	QNhX4cppe+HHD7vBLz9Z5oGqwEcVn6Yh+WG0ztqckBAbugzuQOlLiAsoqMJ7veB5d0sDbfAmkNbKm
	cXgJcyN6sY6Y31eYEQCXx3S+Ik+/kHI3VwdHh9Tvboo3rZZmXMm49ExB3sWKZt/h/H+6ngRcJsIOX
	xXALc33+EnZsHlFXsgog9utaFju56RlKLLHfopHsz2M/OWjKT6vYnDd2l/qAmLVmOmBeFSkI3I2v+
	YehDbDSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXIsT-00000000oce-35bM;
	Sat, 28 Nov 2026 13:54:09 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXIsR-00000000ocJ-1jQZ
	for linux-phy@lists.infradead.org;
	Sat, 28 Nov 2026 13:54:08 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5c14a204305so6017980e87.3
        for <linux-phy@lists.infradead.org>; Sat, 28 Nov 2026 05:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795874045; x=1796478845; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9mX1XwkpZzZFlEfmqdehYAaIQV9Aq1Y+dGqXT/HOfNg=;
        b=Ovlav9f2iUWY1MCLwCloQf0jGErMfmiuqMv+baawPrKI1mcWrzsnP7RmqoiZqd0wF+
         UHz+dtknX6UJwAiHAyeDHIlLeJLt9hurmyCua4bpD5ZkUrnRMzpe695Iet9PVvevTF4W
         6hsUVZEBuZkfSpP/fTzaz0puTCcpbeyQT/BfQrG2FuCY8cQYBdgDG12R+7wrD/YW5Lw8
         y16sce5T+/HjVqglIInXqKO+yyiaE9vUrdY4/BET0m9fHiSGvBKcxVvXvVTfAfF9i3i7
         SI+ZJpz8nUyZOefVQLw5Ab0AOdF3WHqKg0hspueeuqZn8GIsPs1lIOOt9QqhgOJsMwO6
         i+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795874045; x=1796478845;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9mX1XwkpZzZFlEfmqdehYAaIQV9Aq1Y+dGqXT/HOfNg=;
        b=Kt2CZA5tYRJRMzt2VnUrYXSOE9Wf6lFQWvVfZ0pem5wZTv79bQvGLAm5yyjr9tQKZq
         kcJf8vBATOkNQODNRXKvNcIRBzBNfbm1nXCckminxqMtm0gq9JDx96ZRaQkdaQ+Dunqk
         fe8ti1PZxcH0MZ8Ivc2d2JF6s/0c3JNkaESW/4XcDDDdpkjs7CMw0JUiWu73IQBkj+5h
         byEEK6VXcFQenDjSDB6CQWCCYZTA7ILPIY9QsQSZj1oL/1NepMIz6U5LbITifV2v3FdW
         LWG8w/HrMtG4UjeNo9j1vWEGLb+6QyLm7EzkaMpJGeH7Re9R2kBsnh66SN99tEQmDEj6
         2VMQ==
X-Forwarded-Encrypted: i=1; AL+hErGrwvc6KFAPqR3KDDQr+gWQvfQJR+Rh64CDNvxhQE0Gm1fFg2uxVVSGrrlDJ+OsXMjFnI01RRPdBuw=@lists.infradead.org
X-Gm-Message-State: APuU4Z9hN9H1nT3t3/fOgK3EjUSopH4CX1GdhDz33ILbWac0zK2vTny0
	G2a2QarBgzY3LLYFL3Kjt/WMAH1MNGLxNAuRAnCSwqLksWM+O+knxwQq
X-Gm-Gg: AZFdTZey7ZW+mKniqJokBkRklMfl6dpkCZhYbXwGVMl//HZ7UEc9sSf6Ln69X3npeNr
	sSlg1EgO5u2svTG1qePhlU3JmPYZr05t716gK+VakMai1SqoI01MpPuf4T590cS8HF6aKjeg5EX
	kI1Yh3DDRhRZC5onmOmFjgO1GqK0GiYlEjC7gLne9j4JIO56FhaSle2OacZ7LAhxrrRbov9hRwO
	qBwjQ9JIUUmatT75aCIh8qjqXnzM0q2SN+g/tjq4xJBxx9GO0nRnazeVJDPK4Xj/RssEjtWqC5z
	7tuNL7UXy+blofRednT0YKsVYeth7Q5Mc3AHUEsHCAT9N5mDxufaaR/LBLD0dbLXlygS3jrbhrz
	iFyCII3mNlG5PMk4CijSa3VWMktQHIpZ2eKmXG7daHjvuD4q8soJcbk6xjS2sz9+tBUdsxWRQx1
	mWwRqeb34QVOEreVgrbfdo4EaDjWOHb1mq5OQcPqMHBS5hK82iKkbYc3ON1BJFzFcteaQhFWl8/
	nCXSBJVvoBa+9xyOTaeo2G+az82uBp3Q1Uea3MQDEzV3sjqtRQjVlI1/oLc5m1O/NtifYZSvpRm
	E+JZ3EEkGSysbk0iM+7kVpVoIO698bTUTARL+Ox/vvhgPmOcQA==
X-Received: by 2002:a05:6512:239f:b0:5c1:5e33:6994 with SMTP id 2adb3069b0e04-5c1bc7ad610mr8583121e87.12.1795874044617;
        Sat, 28 Nov 2026 05:54:04 -0800 (PST)
Received: from hekasnap.home.hekalab.eu ([2a00:fd01:82a4:d100:34c4:da37:4e1c:e424])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bcff8bbdsm6725546e87.28.2026.11.28.05.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Nov 2026 05:54:04 -0800 (PST)
Date: Sat, 28 Nov 2026 14:54:03 +0100
From: Troels Vognbjerg <hekatombe@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>, 
	Andreas Noever <andreas.noever@gmail.com>, Mika Westerberg <westeri@kernel.org>, 
	Yehezkel Bernat <YehezkelShB@gmail.com>, Mario Limonciello <mario.limonciello@amd.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	usb4-upstream@oss.qualcomm.com
Subject: Re: [PATCH RFC DNM 13/15] thunderbolt: Introduce Qualcomm USB4
 router driver
Message-ID: <awn29nfzVzPi-HDM@hekasnap.home.hekalab.eu>
References: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
 <20261124-topic-next-20261116-fsm-mvp-v1-13-a9b45c69cd38@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261124-topic-next-20261116-fsm-mvp-v1-13-a9b45c69cd38@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261128_055407_468968_39798730 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 24, 2026 at 21:01:42 +0100, Konrad Dybcio wrote:
[..]
> +static int qcom_usb4_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
> +{
> +	struct qcom_usb4 *qcusb4 = typec_mux_get_drvdata(mux);
> +	struct qcusb4_link_req req = { .usb4 = true };
> +	struct typec_thunderbolt_data *tbt_data;
> +	struct enter_usb_data *usb4_data;
> +
> +	guard(mutex)(&qcusb4->typec_lock);
> +
> +	if (state->alt && state->alt->svid == USB_TYPEC_TBT_SID) {
> +		req.phy_submode = PHY_SUBMODE_TBT3;
> +
> +		tbt_data = state->data;
> +
> +		req.cable_max_gen = TBT_CABLE_SPEED(tbt_data->cable_mode);
> +
> +		if (FIELD_GET(TBT_CABLE_ACTIVE_PASSIVE, tbt_data->cable_mode)) {
> +			req.active_cable = true;
> +			req.cable_legacy_tbt3 = true;
> +		}
> +	} else if (state->mode == TYPEC_MODE_USB4) {

While testing this series on an ASUS Zenbook A16 (UX3607OA), I ran
into an issue with a USB type-c display using DP Alt Mode.

TYPEC_MODE_USB4 and TYPEC_DP_STATE_C share the same integer value,
causing a DP Alt Mode request to be interpreted as a USB4 request.

Changing the above condition to

	} else if (!state->alt && state->mode == TYPEC_MODE_USB4) {

fixes the issue. The display works again with both USB-C ports.


> +	} else {
> +		/* Do nothing for e.g. DP altmode */
> +		return 0;
> +	}

Regards,
Troels

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
