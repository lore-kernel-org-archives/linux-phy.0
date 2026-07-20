Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF2BAC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=er4n0qDD/O1Me/HOLDhmUzlxp0aJRRyThcWku3QUVlo=; b=GQT0U8Qs/k6iQD
	2L7hrqS1WyM+fikrIseomr9USwkrqepxskvk+EusBztmslVrqW/08sw55IaIIoTA1I27W7FESVUNs
	T3z45dwtRtC32qV0OGjnlsuT53CpsSdT6GCkFFXHvIEWF3oiiGU6HT7SOA/fdHZxx424n5X2QiU7D
	R0I6mLVuqR3isBSz+XjDBKHnOczUkwbg+5aQXOWfhrjyp40UziQZNmU/Gcd5O9n/7vKyskBmzO4E0
	glgERvBYWxzDntcRTV4QOD//GBk5Llds1MNGiaMGch3oIlYEN2HtY3e18izMzgXYlLK4vP6rOHVCJ
	ZpU2fhU0HygEdopIL3jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlp1J-00000006yZ2-1fv9;
	Mon, 20 Jul 2026 14:31:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlp1G-00000006yX7-0Mk0
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:30:59 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqMes2745293
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:30:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wi8nWkpM4EPvZH/Ahz97hAxk1CRSJa/tutJQGZBgZsY=; b=YBR264JovU6bj+n5
	ZZIsKkJr0jbtad6tDlASI5VZ571TIzXlD18SdiUlw0eRlLgkNWo8wUq1ecZHt/SL
	roQqX1miRKH/kQF+RWnlswyXD4lyvsfT23CmbUMIn9a3+d5PuefpLWD3KxIGMKfj
	1hxZ6o87eclAgutH21e5/jvkTChbdOzYYXJVg12KtlQxe6sClkeaDrcys2M1XMdY
	QCM8BxXtqpnI9KpoaEwgbUtymxkn1kY+bHGPfo9senkEYdjXOHIcpujDFG5Fdx72
	CQ8mncISntyGT8YRZwKueoNmQ5TxrqeSNpYSvriJObMvfaKRgkjgtT598DiVsBks
	hXKOCA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhk2f8pnk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:30:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c1b4d961dso73117791cf.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557856; x=1785162656; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Wi8nWkpM4EPvZH/Ahz97hAxk1CRSJa/tutJQGZBgZsY=;
        b=HsBT7G+RuA99gNHclVRZAb4FI8FZwQu2nM0Lxb2YqeeRdwkX0OUqfiH46+AFo2+clx
         K7rLRJ/uiob8vU10ZLrOajyBlzxrL90JPYd78H/pcrdZghAoy+bwbkSTPCn/JRgPbVA6
         h1mU1/Q9seunge+UduEpqCi4vbYzRDa1WzxD/J1O60DZSIP/YRmcdek2vquq7iuvu2ZH
         k89ZIYJjB14R8dfx1xdyEyat0FyBF+ISywEfxwcPSfeuLk5vx83Ed6HJgfPDM/iFNZ8S
         N5vqaY+GjqIMroDO0AbnJ3RN94fVyizfYOeBaC6FmI6YghLm0/XxjAi0W77FqOfWzkD/
         ObRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557856; x=1785162656;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Wi8nWkpM4EPvZH/Ahz97hAxk1CRSJa/tutJQGZBgZsY=;
        b=N0WnMgvf6XbmQwl0LipKzzXuZy/X62cWVvS5P+jk3e6wcfGsbwiY8q77e4dv82erlb
         t0rDBxvJc14efjF2SXJWOcOVwJ1j8AyKczHlsISBbYgGS6lLkjvxact4R8gO6Zfw4ZNe
         iVtgBTRwMAGZjVpmaQo/asXj9mJdZaRIP60xDLk8KkoCpuFgu3xNlWInNFcN2G1pWsxl
         e7wTAM6f56dyW65uJMs/VRcVxWShpyHYbR6T5pEZVQh/wiukwprNlSoGBLYyKtESqojz
         pMOcISBXCcwHmbXek96uNZtVI7bb+RgT9SaVf4eMGa6OLH7MvSPkndEYmiHbkA9TUYV1
         Y9ow==
X-Forwarded-Encrypted: i=1; AHgh+RqaUSUwf5GK6Mw5PyMyG4K4haw5YUq1FpRYv/hrovGGXygIW4xrrZGOUwyIQ8WXnv7i3o4o0o4bWBg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwicP6sstpAuquEgqag9iQVhKMFoQecXy8w+6EIXFsapkx6hL4r
	0SKr0TM60F0QWtgGxPlfJxpEVqfUd2ND0M59JLNu3SEmDVDmhMKmscbrASGR12gPQRjy1wxf6QV
	pewCSesG3W1M+eFJwadVf3RV0dpVyC001a6/y1zZuLVaBRo+1InBskLJgosZKYmMBVLnp
X-Gm-Gg: AfdE7clCmMw6Fk1W38FC8s2NiUKvUakRrP17n5ZwAx4DvWBKWLtEnrQ/hfh4htLMJYi
	RTSsRRkuku2YUtjVmy0Eaf8otil98I3J4D6RyRl4QKFEonpSOXmHdMhhPoYG4wxiOpU5aKAMyMT
	cvvCHgCpshpAi6yLTJN1KtN88DoUallgNladWNgsEkORN113P/oFhv4uf/QF9rWfZHS1vBa1fu4
	oq/Yr2IlsW0N71ob0OGbk0MEF2zkX+CwQ9KhLY0BvwAJjIilurZXy2eUFTXKP1zaAqd6NwftGz4
	y6dhsrkQ0w+FhM82b3fz9u9PWjc0JlHKstLpFesheUHbDiKf+9dT1pco5mEGNtjG5Hegvr05vNs
	S3ozTEI1BJsmkVGBnX0Hi7PlDNjY7KC/Ahs9VTtZzfFwaH8m6rI1NeBvg+BUBTjCigC9l3BxiGY
	LlhgLeMmBF1iZvRA==
X-Received: by 2002:a05:622a:1b23:b0:516:d83d:b28 with SMTP id d75a77b69052e-51fbf8ba886mr173938101cf.17.1784557856142;
        Mon, 20 Jul 2026 07:30:56 -0700 (PDT)
X-Received: by 2002:a05:622a:1b23:b0:516:d83d:b28 with SMTP id d75a77b69052e-51fbf8ba886mr173936141cf.17.1784557853828;
        Mon, 20 Jul 2026 07:30:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291d98301sm2365292e87.25.2026.07.20.07.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:30:51 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:30:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 7/8] phy: rockchip: samsung-hdptx: Simplify GRF access
 with FIELD_PREP_WM16()
Message-ID: <al4xGODXuxs_DQwg@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-7-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-7-ce5e1d456cda@collabora.com>
X-Proofpoint-ORIG-GUID: Ws2KVZ-KMG5g59RAeC7yrvP75_irJ8-4
X-Authority-Analysis: v=2.4 cv=X8xi7mTe c=1 sm=1 tr=0 ts=6a5e3120 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=EPngckNM3keSbOuRnKsA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=zZCYzV9kfG8A:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2MSBTYWx0ZWRfX1UzuYg8GkyEe
 nWBUK4fvJfvCxeptaJnNXFIaEObDTdwdHc2lOAkJcCovGazRu7qkIoCrFpSNW5sOkWzKkf3h2vC
 mgN3yffVi3sXW/YzRlMpaTEqR9jbB5o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2MSBTYWx0ZWRfXyW2F3zlUv90p
 SZKk3smGPxbCsnM7zssejyEHj9rMFEZZHNrwm6s0j0TeWbUrZQ3PROFhoGQFy6jB4Yl+m5bYuT2
 F151bp1r0Hz+napyZX99cfxU8GTMfSoyfRveFFjZ3ESwpDGWhfHWPyia7fIxMadMxkvbXfQQ5h+
 q7bGLIoBVUC/53qwkbp/ZApK+yB0emN3BvKWlnQoNBE8qZNLhwmZ7jhrIvpLJgpVcxVy/rJjJei
 okRNOzqdHqd1eUbiiwVRcXV+EWt7YG0ke+e0hba1EGKIgknHcIWKMbipNOCln0ILLvBQgGEx9Cn
 RLNRLsyUNPAKdHIN7nsMcD82ucp8cVbP/HZJvyVGJv7lhUilx7eyCn9/VETStP+4gV/Z7gRLBsv
 2zQmnaLoNR+fgQnb9EYhx6s6h7o/WmTtI3lIWGWQbleu8jbJfOw3Nv3oQ3ZVnvXPqCQJhyhfZ6K
 4eeBIIpnBkfxA+2fQXA==
X-Proofpoint-GUID: Ws2KVZ-KMG5g59RAeC7yrvP75_irJ8-4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607200161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_073058_231276_13F856BF 
X-CRM114-Status: GOOD (  12.78  )
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

On Fri, Jun 12, 2026 at 02:45:26AM +0300, Cristian Ciocaltea wrote:
> The 16 most significant bits of the general-purpose register (GRF) are
> used as a write-enable mask for the remaining 16 bits.
> =

> Make use of the recently introduced FIELD_PREP_WM16() macro to avoid
> open-coding the bit shift operations and improve code readability.
> =

> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 52 +++++++++++------=
------
>  1 file changed, 25 insertions(+), 27 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
