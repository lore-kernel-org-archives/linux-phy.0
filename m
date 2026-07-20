Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E84E3C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+OwrhjUFLtDbSKp6X9rHtYGgN+UKtAdQvHpaTD/uYP4=; b=s19vv9EHA8xIn8
	R9GnjvwpgRzwxsG0gzn6487q2JJjFWwvtDSLxBH5X1a2iMwRDhnRVSqdfQkLccFkQChjR76NpZkik
	V8dmKACSJ0QShPKK0sHqFpeeV76CaHfHl/iqsWPENYpwrHhU7eesU/KVzahpwyVbaPMU1a3IZGuyR
	XrrwBo3vdxOzlReWiDKBcJO03EoE337/S55uog7iFuPccNOUG7wKU04hC4/+m5HcWa0qqMpPd8g57
	9MXA7LdEGvZ3PdlokMiD0zM0ZwR3l8Vn2cmiM8ckQEDEAB0MEaxwdAwrOC7pQ1XhBTfqIBslxXrXx
	RQ+KjZPmO9ONBqON0nNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlowf-00000006xXD-1o3h;
	Mon, 20 Jul 2026 14:26:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlowc-00000006xVe-1bTc
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:26:12 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDr79I2878792
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:26:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fu8B/rAcYwnZH6HwVWb262VzxFDwFSC5SL+b8Idx7l8=; b=AdAz0nkdh2cXqYbh
	I6xlqidMkwcIT46nOcXUuBJqGHYLNsV1wigP7Hsf2owQ4zRh3BURnwpJlMo6Obwb
	Y27YmmBAKcU45LLSPOhAhLTG2jvFHYfKdtZ6g6l6N10KACkY41cu6OF6UMJcJVLN
	W1hMK6VQTekTh7GjoXnGhcxzjmOrsZsnoHwHanI+1cFcZ74gbYAT9A84JOZrZbPj
	DN3d21Ho7WUon5JNiNGOC70o5LRrTDFdE44cD6Yz58I0rc/yr4x1NyLfq3vMidXf
	nyg9Ol/CguhD1BuFmGK5JlAjBUjDMilyBk7UsiDw0volFkLkLDdch7nskjko4EO+
	7Opszw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhf0ksv16-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:26:09 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7383a52d9beso7605563137.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557568; x=1785162368; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fu8B/rAcYwnZH6HwVWb262VzxFDwFSC5SL+b8Idx7l8=;
        b=SfP4LeSNSFhtvcGaLKP9rz9t65vmf+no6pkoZfnEGY+TrUIr3JzHkgC7C/zxQ5Cjj1
         92zKPUD6/1bVrp3pFOty3B3ACgh7WHdUZI2nNZNs9rNr62Hps4XS5id+nE03NRmEJGna
         bPTpY7T0rCcylI1i0H/Ik564zbP7kHirVm3fL8LHiGkBcpxkFG6kGVzr9YqwAyosJ5O0
         ig3MqmFLP99NraWDAbwdVPna01QUIEB9d53FoaUrynS8ZxNyph7u193sndm//xZhp/L2
         WmhbfX3b8oHyAo14cGV2+XQROHj9KyEvePgcyJMnzdqkg2jaxKMWjBgbxIKqcD9ucjvL
         WZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557568; x=1785162368;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=fu8B/rAcYwnZH6HwVWb262VzxFDwFSC5SL+b8Idx7l8=;
        b=IiehF39UUZV0swmbLl+4xjPetduaREdFjLeQD0M66EakUEQBqR5ZB9kWbYYF2dLq2J
         TP0eam+7+Kjp9OaIZhPCqVf6nSThJm7/reXt88ZNo7f9xell6NXaySFHSo9eRwsY3R7v
         L+IkeE4LxBVx2D3jORuA0F+JLNLyNx9ijBOj+3VcZTxVIGicAfJax8cia4juX13FJbrh
         HRmL+tcIf/ifN6s4nRR0kxTPuuMrDW3QCxHDI6VjcIm/fepD1cbAGen6RpeWKwSVB0T5
         fcO0EpjBVS9EjnJfOU9cCJYj8/Mpa82VG/Hlmg3b3f2PjNe67f7P8OhwTVOoFG99+1K8
         stCg==
X-Forwarded-Encrypted: i=1; AHgh+RqNFZniaUzMrH4PMr77elM8AwgEf8qCcNExWCmf16Th/5rIXB4+u661TE1b3p67crZJCBq0W0GWXGg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwtSLgh51nuuXjop4t3F/a6hlLKhKTxWcu0uZuclfLwktnsZqbT
	dmVrmRCr4gXwuGzph36zv4U7I3+SNW4bE5hNgzIhGqdedS7xfTs2X/puq4AZpRPdnJv6/HAoZ5S
	Z2cWdRQRx5qUuh8ZuqXzVSXiQGUAR0c9P426SsXJ/Oa8YBzR+nATQS2iZ5s6Weu+Ot/9sDScpKZ
	Cj
X-Gm-Gg: AfdE7cl2jtVRSgdsJ8o7571Q7crrYZgF30T2inGBgBFOZXlOO+dRDXpvyasIdyAluCM
	3oPc6sZVFWLMCqXBmGXoe906V0bd9uTpkmh9vUMjo3OW6zvtiR5Ciei7zEqPyKwBWKORcxAaq6S
	oH/KopBqFMzknkNLVOfX5g4n32uKOJMJjEkq23oOPvnEBs8cTPkljXNWmMgBj+kyefys1bXYhnm
	0QaYYOPGhXSXJ9E1YaX7JN3LEs+A3AiNgLP4Pfzpx4Oy0dDBG6ZK4+p7rYHnCRAjkrmIMvA0Cu3
	3HBJf07EmPYiZd5e2LsZ9FIO8q2lBaDGBhlR4m6Dpr19gshDWLnWDB8lMXg8SwRlvZGUNNom5B0
	nWgqd4PUMN1V5cQVhj9w7Hn9YYoNIGvEXcF/Ruv2QcYiscDYrBB4sWvdSPOX3uOKQzzc+UlE8dU
	Aq4mYRnNPd2O/Ulw==
X-Received: by 2002:a05:6102:1487:b0:729:affa:70fd with SMTP id ada2fe7eead31-747534bf4b0mr3897217137.8.1784557568534;
        Mon, 20 Jul 2026 07:26:08 -0700 (PDT)
X-Received: by 2002:a05:6102:1487:b0:729:affa:70fd with SMTP id ada2fe7eead31-747534bf4b0mr3897201137.8.1784557568057;
        Mon, 20 Jul 2026 07:26:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39eb5019d29sm17048581fa.36.2026.07.20.07.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:26:06 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:26:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 6/8] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
Message-ID: <al4v_A7Cz2NBEakL@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-6-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-6-ce5e1d456cda@collabora.com>
X-Proofpoint-ORIG-GUID: ZV5pYqWEq2ycd107oLDCT9LYz55Ctit1
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2MCBTYWx0ZWRfX+VaD/iAOmrQO
 s4i3v7Zxm4rXzPHT9Z8FNV8OHPAGVDHEWCZnXkS8KQx9xxE9ICt+A3QghMcNen3CLlY+St/nLoR
 hzweY9HY5C8fwji2FFVqoBct0wiq+/g=
X-Authority-Analysis: v=2.4 cv=G58s1dk5 c=1 sm=1 tr=0 ts=6a5e3001 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=J6eIceq14uCgUkEHA5QA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=zZCYzV9kfG8A:10 a=-aSRE8QhW-JAV6biHavz:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2MCBTYWx0ZWRfXwUlxRdzKJFVk
 xvOx71JnUtJzosTK79VBzfEYEi510MiK8KpLd9YVF0mRPSvdHsyGLjdWc2C9MMh+tm9EZFx4Jul
 lnW4xfsobW4I8n+py1FsRh8LlSEs8gkTJ4VNe1bnY3Vt+C1Jsj9ABJ3jl2qW4Imjpjg7SF85tgU
 lK5e2aqQ6QBN88+S55aS906mmJW6AFIYyFyVj0ZMW5GOJChNUTacG5Gca7Ttm3hm8rt5bqUrxjE
 V0cOj/YihMlLqXgO0wsm5qZN9x+kGkPXF22bd7RxI7uYuYHX1EAiTD8YbCe69MzMK8JQM4pDIh4
 NRk4sI/QLQD+IiIBEvHVnFCBOm80ayvNn/wE3/fSzUsLneJ7mHWAKdLTAr9GVZ35q8bPu47VH37
 gxkrGASXRHYUdzVWb+1mE36+aUXL6YFA++llzRuu6ApSi/NYjZ7lNDi9dfF4dUnEY06oD/O3N7E
 pFT/u16QDNlEdsnLGow==
X-Proofpoint-GUID: ZV5pYqWEq2ycd107oLDCT9LYz55Ctit1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607200160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_072610_530605_9CED0864 
X-CRM114-Status: GOOD (  13.43  )
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

On Fri, Jun 12, 2026 at 02:45:25AM +0300, Cristian Ciocaltea wrote:
> Since commit 6efbd0f46dd8 ("phy: rockchip: samsung-hdptx: Restrict
> altering TMDS char rate via CCF"), adjusting the rate via the Common
> Clock Framework API has been disallowed.
> =

> To avoid breaking existing users until switching to the PHY config API,
> it introduced a temporary exception to the rule, controlled via the
> 'restrict_rate_change' flag.
> =

> As the API transition completed, remove the now deprecated exception
> logic.
> =

> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 42 +++++------------=
------
>  1 file changed, 8 insertions(+), 34 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
