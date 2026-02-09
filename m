Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236E9E81BC1
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 13:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyU6UVAxKruEbQoo2PrZrvtn+KRoqSw1efcunbvpW/w=; b=1CyoKwPrhiN6Lm
	hEJESGCFk/IpoAI6LkcXW88pEYdZmY47RyR9EgRL1ddcp72R7EEzGfvaFKglFcuAC4V3syobKsZTP
	dNkBKdmSRll5G9d+OtmgYzkM90GuvqhrGMnTVmp+C0WAyT4RSfaRor1LC7jFJReVtdYspnnS/4Xab
	plMNRdHJlJlkz40Y4nFm+ckk+k0uuhmpMsHT845G6jqnmWUNQhO42jSCjkazgcS81QhcqDpT2nr+6
	t2rp4XeDCEbSU0Vt9GOG7wuesiRkXp/KaQv0ufko2F9GTOer/oIGKg5+Hk0jJPmtomJRrKkc1NhB6
	gHZAJkJZonmbYpP6mb2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRA7-0000000FQLb-1z7K;
	Mon, 09 Feb 2026 13:18:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRA4-0000000FQKx-3RsD
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 13:18:46 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619ArN5B3455123
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 13:18:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PGL63U2cmrlbgRnfDZftDDih
	rdoHz8cdVKu4FeYkZ2k=; b=pbhTnLfwfqe6lW4nm9byVy7dBLyLy/HoD7WaRuTb
	+s2KCFFgCnsFsK7wkskJPFYpU+rPOEVIIcdl8colQN3rGnFQYRMc8mokeGEQBsns
	PkzspdJS/kXQOI/jJC/c0vEdO/3shwmLP2srwV1ZUuSX+b3cj3KxVDMEpXyn1IrK
	+l1J+URbSx7zyTkN6XikWDz4Ym3EbkPc/hQ3lrbWk7LReECyiUX9tBY+s9+qTpQD
	Lwg5uGOkLprAHouix0/e7EIK3tKrGdQxxjcFUDJqHS8tJg5K2Mg6Dvqa3oQIjvrx
	T2pr82l3opQX2DGnslc6N3YNFg2TZb9OJcotaQ/nS/vL1Q==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7e7g8dt1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 13:18:43 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5f167c4ab16so10899296137.3
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 05:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770643123; x=1771247923; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PGL63U2cmrlbgRnfDZftDDihrdoHz8cdVKu4FeYkZ2k=;
        b=kuLL89MrF09e4LGHWMJ29Ydi7Y2JyVImqKQxYbdL99APfK1wSHfZlIF156uNYsHFCn
         +QRZTfwYsfyd7Uims3wCWBCQ3Lyt4/0sbKEhRLhjiGQpKhARqmA2hlpl6VbrgGry7NYA
         dofRbER/0BV63JNjugEOgVYmCPfWuFfti6Yr/Vthqg6cRmf0ZO96RRXa9ZfO/z3moGwS
         c7S6kXVaa5l/0hNiTXCEuBpxocdL1Qr86VmCbPQCNcpVCbaC0xu5Jfn3CaD+PWsIeLOG
         89/NN2PqCef/HX8BKHu/WgHMbraSt7F67bxCfLrjBCY8yq08/J5faPzkJ3aDILHpWMEu
         y6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770643123; x=1771247923;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PGL63U2cmrlbgRnfDZftDDihrdoHz8cdVKu4FeYkZ2k=;
        b=fmFosEKiJvhXRCzHTrTXqSZeHJ1JnNEVdB6NYJWNh2KuyS5oQebn6XgEDBWM+G0kxA
         kP0OEXsfTrbkW2fzzRIs02deqiBtXdPHRV5U1ISBobB0Mb5jRPIunueGMzdi1uFFx41l
         zyqumLe4YmFEMB7NnZGT4l7j3hCZ19bSyODKMB1br0Q8DhwBmPJfTF1b8f88GdYCg/l3
         Hw1xSuud7dYRlWb6+jFaJK6PFDx+yknAjlIp3DPYUc00NhpRQJrM8FA6T6NDCiprpj9K
         n9GOD1ZxX1qjCrgp2j8ioK78G1WsAtY/o7PoCzBoqC5rbPJ9K1/XMAh6Mgyy54V0OMM+
         ZUYw==
X-Forwarded-Encrypted: i=1; AJvYcCWQ7eJKzNM1b+umedKZPSYiouSts4Tedsz79i3nTclEa7VbO4cfLPq4jZMNECVAPq7+/XMMrOoQXaU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrKzBpUuHn4TmGSVYDdQZ1utqnzDkJAVJhnID+jd4Rt6Fvfsr8
	MGnMASwUkrLZj2lZna3zbOpbzgPg99xCX5xdrzjJRhF+mVxl9YVZBIjjdM4bkL/KN8SNpfeV8Ic
	gQp6lLRfEe5j2IG7xkspVEfo0hJYMy3kZTBHxuOvPaFCa/OkEBQbYfXh1aPk5g+kZwHWp
X-Gm-Gg: AZuq6aIRNkC28F5ysFMpaT+2yTtnJl7SClHgpdhApprS6m4GZmA/eBFJRRtYIB3D5GN
	+aLsKInaS+DF06RsXqIDKZM8vkXTjcXucEPwroRK5AFbhmIF/WvJbRDF1BedfI3oAOYSqwEc7J2
	8MObS6D1W3BbN6E2fRLwj4wF0A+6WtQ5oBCog8Ock6kGnCbUSfLLM2YVCMCiRVxbMCWbf2oO/xW
	xMcjcFHqYM6hYTiTe7UUyBTargY4Ylwb7PYcwIqIAAVCHaKFbIPvTFFhil0aq6lfJ3f6mokGeJT
	J6U9vBSFOYTPId6YopxSc64QVjh10JE9faV89NBuevN4xLSD/c7ruPTyt8b/rbKqmRVZnvi1XtJ
	CGJpqvw/rLPGMMdOxZ+Yt+paZca8GdWJUrY5PHNc0U3ZWUyrHs5VMrhcTMG4Q2Ju+VD+0rU1Q5o
	RN63euzxzqxqcbN3xdcwT2eU0=
X-Received: by 2002:a05:6102:3a0f:b0:5f9:39e7:29d with SMTP id ada2fe7eead31-5fae8a256b3mr3217634137.8.1770643123036;
        Mon, 09 Feb 2026 05:18:43 -0800 (PST)
X-Received: by 2002:a05:6102:3a0f:b0:5f9:39e7:29d with SMTP id ada2fe7eead31-5fae8a256b3mr3217625137.8.1770643122571;
        Mon, 09 Feb 2026 05:18:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e4673a2basm2474515e87.47.2026.02.09.05.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:18:41 -0800 (PST)
Date: Mon, 9 Feb 2026 15:18:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/5] phy: qcom: qmp-usb-legacy: Fix possible
 NULL-deref on early runtime suspend
Message-ID: <frzod5mzv4cjbu7s34u7w3nt2rv3fn76ikcmnd5zsrt6b2yhec@n7d745h56xbk>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-4-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205160240.748371-4-loic.poulain@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 6Eris9tNxLit-xYlZQpAj9u1XmGL6nU6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMSBTYWx0ZWRfX/fLEkhkRb5u4
 iJCmys9PN5W9SkHZq4nTJ7Vc60urspB57PnIDk8oV1YLoAYZOp5TmfGTYXkjeQIrRBkuDcChcN3
 7R9MtszXgdEyfvt6OByqjA6RwdL3LjXRIpYGi4+FCq79Gr646EVUAkdg7sdLP6A73BsNS1whHDK
 mWEvZEk9SnhuCZLpRDeU7E93NXK813bi9tM9aHO4ULFuGnGMSaMaOZsJxz0uD70M7ZVVTQOrnl8
 rdJTHRXw/NLzDNaHQp9LAUTViFn44w7H6bHj2zECjSl8TeDvQGeY9u7aDyOXu+IaBd4eCNGNWRi
 vsDPjq2VUKGsa2vYvHjPUeIhU/9eBbSkINdfqHq7n900ORies2j77VdrgxK0I3EZPxeKYCU4V3t
 wM3sODHfbLMlCdYFlPTgHU0eWejjx8+35mvD7D7r3yop6CitKdfyhkU386w/NU0PcXuZCMNgFhz
 yJAdpqyZ+SG7hLHlnYg==
X-Authority-Analysis: v=2.4 cv=GMMF0+NK c=1 sm=1 tr=0 ts=6989deb3 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=JrZo24E52nylh-zEmEsA:9 a=CjuIK1q_8ugA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: 6Eris9tNxLit-xYlZQpAj9u1XmGL6nU6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 adultscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_051844_995473_A1C5CD49 
X-CRM114-Status: GOOD (  17.35  )
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

On Thu, Feb 05, 2026 at 05:02:38PM +0100, Loic Poulain wrote:
> There is a small window where the runtime suspend callback may run
> after pm_runtime_enable() and before pm_runtime_forbid(). In this
> case, a crash occurs because runtime suspend/resume dereferences
> qmp->phy pointer, which is not yet initialized:
>         `if (!qmp->phy->init_count) {`
> 
> This can also happen if user re-enables runtime-pm via the sysfs
> attribute before qmp phy is initialized.
> 
> Similarly to other qcom phy drivers, introduce a qmp->phy_initialized
> variable that can be used to avoid relying on the possibly uninitialized
> phy pointer.
> 
> Fixes: e464a3180a43 ("phy: qcom-qmp-usb: split off the legacy USB+dp_com support")
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
