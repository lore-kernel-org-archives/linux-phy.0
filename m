Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21591C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tYagA3SgqblbYVzfHtZdehoE3ZNWuvYlmOH/bcmpA8=; b=yziZuVMP9YmUVa
	Y4X3TfWbOl7iQJkr/PObYZJhVOIqFqGhuMhGZVYjyqaze9CgHllNMgS/CFtTskfvNuDkkHG8dVLAd
	Utgzlntlv7wn1t7/CD6ANVh/BsXZvxAkxkl+onbp51iYLwuM3zCBcx7M7vaaTWxVJj809YygnfQ40
	WaUkYeLsA2Yfq2NwUvuQzz0eIynsZVZap9yxfXE8Qiz75HGStz/M18x8NG6Z7DGj/QBI26piiap/u
	EGGALN8wuibwWCNDESDiG3VsTJIXKerQn7JNsgs2ZcR++Sq9e6mQ04t//KZ/lQe6cts04KF87xzb8
	+/p8hdAysEomQ13rlNXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlonx-00000006wGM-3YEx;
	Mon, 20 Jul 2026 14:17:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlonv-00000006wEu-1XMu
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:17:13 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqNkO2498347
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:17:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XyZTxG7+Rkh2o9N/uSYU6cRoRSlOphjtgwLvLuA/HA0=; b=Ytn5/mj0JWhrVIWs
	cxPTq1K/nohSxW76BAh2IAcjy8DN+GzFEdiYTfifALhLJTtULkotM9bHes7Gagd0
	jmFf5Cun40sHSNeN9wiGBw5quHdHNGGYk61NI6wTcKbWn6vfbK/c3fCninX6DEoV
	GQB9J4ySQImyAeSyTOicbYkn4qAnhxFxSoPtpmKYT81zhBl1a1jYttOrV7Hgnj4I
	MVmJUKyirLHnrZCAVaXcLgbOlsyeyI/MDRDi/rXSpwKie+0//8eyj3CCgETKPbvr
	J3+RxG/81afFNWtdZrv/jCtA4vpjAuqXbqkO2L++1OeyGvAIEBgViWN+DtszcX5j
	JU5kjg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhh5y16xu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:17:10 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-6751db2792dso5920835137.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557029; x=1785161829; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XyZTxG7+Rkh2o9N/uSYU6cRoRSlOphjtgwLvLuA/HA0=;
        b=dMNOHzB5GKiCIaCpzr83LxbVEhMFli6bZCEAEctXOY0DdGVUbKPV7FQ2ZjcAz4ZqS9
         elyTu5eda6ieVaZtb9JKCAnFgEyu8gzJ8Ep1UqBqKvsxnOEZHVlqsDv8Jlx//uvAmtN0
         t7AISdvecwVY0wDjuziPHBFqQhSj1T2zItkXNPwAjfTV0Ujp/vXCmZzJwgMCCxgsUTjG
         NZSZ7fW8mOyKrYbk9dDDVjQXNh4YRmaCtSalKtpj8zQcVIiYYBKQzK5O144IRd+32Rtj
         3TJ9AHQZsn7VNqAPoVWaYhgbx3SSm14OweaN7+KorweWbi/cgi3Z3t7UzysnP+3zdCL4
         tlKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557029; x=1785161829;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=XyZTxG7+Rkh2o9N/uSYU6cRoRSlOphjtgwLvLuA/HA0=;
        b=jNwoN7CfjzyUxwFUQNcy5PEPvLZ+afln+W58PBVMaDQA5uJ3JzxrOQEOG4QQHQsYrH
         L2Dp3uM2+0je+sl/7P+UTD/6MkySIDrGUhdiPI2HCKxUofxDpvzVVhaT+hR+4qFKUkLb
         jwKdjrk76gWmcbAa2w/KDD41pWGoug5bgBTHryCOw0UnomN2zVltBv3Bl2NQtl8CFKtW
         Pi2ttmgow2otzyZzOt7EgwDXKZwej0weRhr511cqah5ql9yiMsVbzRRhrQwwGNxioHG2
         PQFVLFxusj9mylp8xdEz3XshCpqb210rYk0AewtpjAk59ySYNFxGTVpdo1Y/1BZD7S8k
         xNcg==
X-Forwarded-Encrypted: i=1; AHgh+RruBfbqEdiObzBEDFAt/cX5Mfr7V0E75DySALqjnivVM9eyFWv90deW5uESWzkj64eOuDraWbsL2dM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzzqd24RVr/V/Ng3SFn6H6Z2Rr4hT+KHTrXbL9qvwPTbS9h1HZv
	zP1N5jAAymFSgTjULqIyuD2yeYaHUR/gepbyPCUWHWlh9BQV0rMNsc/A6sr55N/Zh42AR1Dbj1q
	ytjSaPKYuR5vmFUzMTnkfb/f0Kxl7gPL2mZI/jxKLN70Dq36mz43ZzsNebzKYLJ97z8w2PtM48d
	VA
X-Gm-Gg: AfdE7ckZE2/HOCj/OHqJx3YvmOZ3ssxJldGnQmAChkrQrtERpqyjtA6opqxBio33LmW
	tnlWKQl0LPmW2c42MSpeebTKDXrOpb0bujqBG8F5LXss8QMCLJjYI/WZq6xji59qRqVzE6YIVd5
	iBeZiSNjly102zPqiO+G83+daoBOo0aKSzyAWaSvXR6HLVhWRF7bJunfyGh0dRH+57Wf2PRp1wO
	OesKbH5hkX3m9/CRk1tchOoFbYapKCThRz07bU38/tkG/bCk6U570V2MLB7FY+s3H/GAz+IUSct
	NciV/GyRm422gsMQWR09jgVW2c0vU9CyIXXcQgG4uA8K4QK9HaXXRUkKPcE5asoUlffj5kwOvrC
	0YQdNghNBuYxvXjOf0ipsJj0Ax2gGp5HZRH75HQh7Z0IPekdji0dgzCI3bUmBliK6K4BfxHFHAj
	Ih2wI2CnyEy9U9KQ==
X-Received: by 2002:a05:6102:3751:b0:73f:7bca:217d with SMTP id ada2fe7eead31-747536f091bmr3504161137.20.1784557029395;
        Mon, 20 Jul 2026 07:17:09 -0700 (PDT)
X-Received: by 2002:a05:6102:3751:b0:73f:7bca:217d with SMTP id ada2fe7eead31-747536f091bmr3504137137.20.1784557028783;
        Mon, 20 Jul 2026 07:17:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e189c7sm2365363e87.57.2026.07.20.07.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:17:07 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:17:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 4/8] phy: rockchip: samsung-hdptx: Handle uncommitted
 PHY config changes
Message-ID: <al4t4aN01iiUKff_@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-4-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-4-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE1OSBTYWx0ZWRfX0rN/rgQMC8il
 8GfR3SeyAVl2XwqvYNa09EQ+DaWD7fPEVOpzVd3w9l9x6zTSYuBXsXJ6CivvjVfXC+Tj1tB1164
 zDGxYPeSq4xGqS3Tx1dHMS6RyA8uq14=
X-Proofpoint-GUID: awBhz3aOtdJd8fofNkatbS8QwvP4dEBf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE1OSBTYWx0ZWRfX7UhUmQcpLDQl
 iwpdqGJQVgNEhNOhfv1XwuK7YdMtFEn0Yyt4UgKyiiq7zBKqKumJWHCSZVImiLk+ywH2j3fS83o
 ltVtyCVMm17PLa3fwK2GnPOnVWCt1Nch9ypw+Py4afigTgy8y/zbcAiKRNL+9QHsMbMGvRhH29S
 ChLyW15lK4zn77M9l6GKDqU8ZUH7DLeByEtlLyW6+FOjIj6JYAJk77PKuhZotfBjumdESCMJMuk
 WIG5H2xLi9hZdhgijO3T1j2rmV7mBek9lADsTe6aMI6CWW39bzNcAb+2rPpIbdpqr5h+RjRe6II
 521knEtyTW91dV023Xs8d8Wk1NrYZmcfSu0e1EgyD0actT9PwMz1lovDkww5eNnjmQwiLVEX3TO
 qMTXowcc63mmuKH+VK8D8T52mtqFzs/8XLHd1TB4ceqfPbpWmfaV5tAHdArpj18s9cntfbgypee
 7mXi+T+2SZAqPtz3RQw==
X-Proofpoint-ORIG-GUID: awBhz3aOtdJd8fofNkatbS8QwvP4dEBf
X-Authority-Analysis: v=2.4 cv=f/x4wuyM c=1 sm=1 tr=0 ts=6a5e2de6 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=QX4gbG5DAAAA:8
 a=shz021jzHIKqnGQv9qIA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=ODZdjJIeia2B_SHc_B0f:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_071711_411549_9F39FB89 
X-CRM114-Status: GOOD (  28.36  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Jun 12, 2026 at 02:45:23AM +0300, Cristian Ciocaltea wrote:
> Any changes to the PHY link rate and/or color depth done via the HDMI
> PHY configuration API are not immediately programmed into the hardware,
> but are delayed until the PHY usage count gets incremented from 0 to 1,
> that is when it is powered on or when the PLL clock exposed through
> the CCF API is prepared, whichever comes first.

Why do you need either-of here? Can it be just one path?

> =

> Since the clock might remain in prepared state after subsequent PHY
> config changes, the programming can also be triggered via
> clk_ops.set_rate().  However, from the clock consumer perspective (i.e.
> VOP2 display controller), the (pixel) clock rate doesn't vary with bpc,
> as that is handled internally by the PHY and reflected in the TDMS
> character rate only.
> =

> As a consequence, changing the bpc while preserving the modeline may
> lead to out-of-sync issues between CCF and HDMI PHY config state,
> because the .set_rate() callback is not invoked when clock rate remains
> constant.  This may also happen when the PHY PLL has been pre-programmed
> by an external entity, e.g. the bootloader, which is actually a
> regression introduced by the recent FRL patches.
> =

> Introduce a pll_config_dirty flag to keep track of uncommitted PHY
> config changes and use it in clk_ops.determine_rate() to invalidate the
> current clock rate (as known by CCF) and, consequently, ensure those
> changes are programmed into hardware via clk_ops.set_rate().
> =

> Moreover, proceed with a similar fix in phy_ops.power_on() callback, to
> handle the scenario where the CCF API is not used due to operating in
> FRL mode, while the clock is still in a prepared state and thus
> preventing rk_hdptx_phy_consumer_get() to apply the updated PHY
> configuration.
> =

> Fixes: de5dba833118 ("phy: rockchip: samsung-hdptx: Add HDMI 2.1 FRL supp=
ort")
> Fixes: 9d0ec51d7c22 ("phy: rockchip: samsung-hdptx: Add high color depth =
management")
> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 84 +++++++++++++----=
------
>  1 file changed, 48 insertions(+), 36 deletions(-)
> =

> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/=
phy/rockchip/phy-rockchip-samsung-hdptx.c
> index b210c1a88b25..25bd821cd039 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -413,6 +413,7 @@ struct rk_hdptx_phy {
>  =

>  	/* clk provider */
>  	struct clk_hw hw;
> +	bool pll_config_dirty;

Which lock protects it?

>  	bool restrict_rate_change;
>  =

>  	atomic_t usage_count;

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
