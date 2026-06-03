Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C63CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 12:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsiEFo/EEsRoHWBsvnJifXjbYk6Re9cHlOA9cH9qfgo=; b=uFElaLhcZ/MDZD
	BHpgx+xpzizN9h8UJ+8Du11Nwoi6CFe2x5WcMOGQyNElMcL19nzFEYjuVpqi1D9+PiyD2iC8s+Z+9
	8UepwevP9osM6/Q0nmBdxWifz3d6Vkdkr98IYDSyzN9oFRT9NuKbUHJUZztX2CxukyYEUHRCJcM0c
	/tV08+zM9Ni7RgWy8t16TVu+L2PJWzOEr8KScAmPEfPdJU/+2RRQe7vjIYGM7h+cmYy5AgpgtrrDW
	gmILSzIhHD1IIb1coEqQHRkPfcl5NPXbzqzATxpdZ/6gBpdFOAGkP6JrSK85m5KZwtGi3L3fh8Abr
	9JaEkMsAMeoToesjqQ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUkQY-0000000F2Rd-3V19;
	Wed, 03 Jun 2026 12:10:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUkQW-0000000F2RD-45oz
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 12:10:30 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6536RaeA1946638
	for <linux-phy@lists.infradead.org>; Wed, 3 Jun 2026 12:10:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2ATJtFTYaLad3DCcw6EHaR6UDZL2D5tB2SW9NzD1xdM=; b=Rr+24RCInsAvsXQX
	3+KhmLczGOqk6E0Onhh0aAeyNo6M1cBzQlYFI/MP+d3lgTJ/XwUdNqkpFcRCk7M5
	D//ro5U4qxJ2nfNjzPIk8lBRl/0ZO4tV4hl5cuFxPCEUhL2ZjF0ISSJqRtdaRT3h
	rFFrB6Gp6FNN8xQn0UYYzikBH7r/2pJipxrm3ELlmufBMRwmaM2StXntP/u5wzqy
	2+wohFpm59HvzZacrSEGQBZwyo0naCYVUwgwjrBmcAal7az0fkd+z/wjmsQGl1iu
	zGQ1ok30yEBiDmHojrCaxFHQc/WFeG3CG6Y25lIVA41QTNb0mvE5OEzEYUVDQoL/
	Titn9A==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejabgjd0j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 12:10:28 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-6798c46f723so5824063137.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 05:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780488627; x=1781093427; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2ATJtFTYaLad3DCcw6EHaR6UDZL2D5tB2SW9NzD1xdM=;
        b=K0ouGvkcHPwS80hnSjcEH4QHRiKtwijWn4ym+J31Q3a+q/ELYPflcifH4+UNx3z2rr
         zO5Mlp+tK7/uCG4VF3AgrBSGtUDuWzK5X489drD9SE2MNotodmoYQsNiF6Ys84F8hiHL
         L/UqHq4yXwe/ZAFIay3np3LbHuNHP3XKLoNAIeVIUCaYixIHwrLKThGbI0lszkrXWe7v
         hhOhCgkXwzDBRoxU56taw1Jg5g0oxSMs9YvZmM4UYBiveXW0kuKhAmjU4OR5KZ0kozZa
         DMK3eoGDwDs073HmSoyp/0IiDW/bbIc8KGi25wBVZQf+PMwXZqr2xVAa/y513cTj36aN
         DjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780488627; x=1781093427;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2ATJtFTYaLad3DCcw6EHaR6UDZL2D5tB2SW9NzD1xdM=;
        b=p6+CVdM9SqI9sIjr52XbQMz4fApqJaWqMRbssPTvf3Rrl450o4jqHxxGBLqKBQRJ5j
         1+ZXMX3jQQ7MCSSq05YV3zwcbdGnCMiuTcVCiduJ9quVAaabLeH1YD4m1IPXhbhABXuj
         PGQoSZ07Lb9lJHaYwwCwXNidL3TDlucfA+VGzHCEz2K0I9hnAMVpmEsFWDMwcdMvyV0y
         W2UGTccTzkwMDrw5bNwVdN8ubFxI+X9g6rD3kHb/uVNmub8Dr2+3ND2eNQQxzSy0a+Sc
         B0VjSNmQP7r9fAGnioSpcIx2ISM3FohFjJ49E6lLoPNm5AfpqOBFkqtDJ4DNvBJR96si
         f8lA==
X-Forwarded-Encrypted: i=1; AFNElJ/pQXJa9wD6+3jPgSc6fg2iZ9WwkKggmCC2CzlJ/AhjsfeRU9Gm2REnP9FJTYo1ewSUvbZaxxOy72c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfWYwVxM9ez43kGJ8zTNrHoK5R/nvcqz+lCG3BXpnA9ZHegvG7
	8mmDLsWEm17y7RwUCP0s1RlIw7E7rFXQfj+ri0bCjTywVmYt7pq1FpWjG6Q0+qTWUXEF+zJtAaj
	JDZBPiBc3Fs8ZYm6fBVbyGwEBBZ7LmZT5XUN6K8HwdOrNA/qZDOv3fiwl46n92WWlFbZT
X-Gm-Gg: Acq92OENAIRtyAn71hb7VlqyX4M2/7HnlhjeyXI8Ty5AEGG62nST15n53jJw9DzFk+1
	DNQyEpXH8CITj3C0vB7bXqgnGosUWZX83Mh9VTEjV6+8JNUBoHQa802CZVBBpDNIbNrfzmxewoC
	tnALwS+kJ+3XanEZKaSmlk14o35WSRNlivNkYiyRuEBlbk24DtFY2JWioABuFn7B4mPVigzOyJh
	sYsdWvAih+FqH+ZgEcUHaxNLk84UysfULMpc+tXaCfD+/KZz4cyzICUVgYZwZ3T7iT56MspmlWU
	QeEblayvUttI8gM9HcLi5IIECFd/pt7cWBIzcBjixRcidUhDCa8fKYv90/QfCiRjz9nAWA3nnUy
	DmnLykNcz96QpFXr3VIRJKKlGUgw1s55q7i2TTSu4y4KVGNXQV38z8Va5bmumaXeOGX+5UMAOys
	7V5adW/wywn3MhWTFuiNYSfn8g2NetltOLKofiMbRsFy8sPA==
X-Received: by 2002:a05:6102:32c4:b0:5ff:c5c8:2734 with SMTP id ada2fe7eead31-6ec4881b223mr1353315137.25.1780488627169;
        Wed, 03 Jun 2026 05:10:27 -0700 (PDT)
X-Received: by 2002:a05:6102:32c4:b0:5ff:c5c8:2734 with SMTP id ada2fe7eead31-6ec4881b223mr1353307137.25.1780488626732;
        Wed, 03 Jun 2026 05:10:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac2d503fsm8633201fa.34.2026.06.03.05.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 05:10:24 -0700 (PDT)
Date: Wed, 3 Jun 2026 15:10:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
X-Authority-Analysis: v=2.4 cv=R6sz39RX c=1 sm=1 tr=0 ts=6a2019b4 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=tcGPitenHjrlTjGvCv0A:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-GUID: fo_mtnP4BcJiVuIZ1eLMJXWVOzJdsQOn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDExNiBTYWx0ZWRfXySZh/M2zS93I
 XdG8CLv7n9RfEwANoI4tN5SZMJZRtJq/arP5QSfyKu3VZb0bpcSkQ28DyZ1bhCm0sfurGicElXU
 YoUgdNz0YTs1pgCoMAjA0QA+GjNoIq/DBbrFEmDRKK3t7njfvSbZ4Sxk9E6jQcFy/qO/2mgX/VX
 SV+/xZ0UrpeGUzInLrJPzamzEeaLAlM7yFor7CQJFJMTtJpyfh5cWe7/K69DZjZJnNvVZfMsgsQ
 DjdzKognT7yaQOyxx0TohtrItPWRnpB3fJhwkmd/6pPogiBJDFBFFr+GlVrThGfLAJ4u7MZ+BGK
 9Xmp23LwD8nY8tj6etPNOezurIqqRtOCLwu3aJheLAEGXK4JfYLYVeUteUaPq7xnQexTt8S3RAP
 ts8/0ds5HJE9sVET0iqWK/oBlY+y2zGurqJqe2azqqZXv5eaJAcdnm5w0mCM4KVOdVmoLV9R89W
 D1n2l20I1QZzljMkZ8Q==
X-Proofpoint-ORIG-GUID: fo_mtnP4BcJiVuIZ1eLMJXWVOzJdsQOn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_051029_022424_1750C11D 
X-CRM114-Status: GOOD (  18.01  )
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

On Tue, Jun 02, 2026 at 11:22:41PM +0100, Bryan O'Donoghue wrote:
> On 02/06/2026 23:07, Vladimir Zapolskiy wrote:
> > > +=A0=A0=A0 ret =3D fwnode_property_read_u32(ep, "clock-lanes", &clock=
_lane);
> > > +=A0=A0=A0 if (ret) {
> > > +=A0=A0=A0=A0=A0=A0=A0 clock_lane =3D CSI2_DEFAULT_CLK_LN;
> > > +=A0=A0=A0=A0=A0=A0=A0 dev_info(dev, "Using default clock-lane %d\n",
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 CSI2_DEFAULT_CLK_LN);
> > =

> > Why CSI2_DEFAULT_CLK_LN is set to 7, what does it mean and how is it us=
ed?
> > =

> > Since "7" is a meaningless number in the context, I believe it's
> > practically
> > not used at all, and if so, 'clock-lanes' property should be just remov=
ed.
> =

> Documentation shows clock lane at lane 7.
> =

> Truthfully it makes no sense that the clock lane would genuinely be locked
> to lane 7 but the documentation does seem to suggest it.
> =

> Yes in fact I agree. clock-lanes can be reintroduced if someone can show
> hardware that supports/depends on it.

Konrad and I checked, Hamoa supports using other lanes as a clock lane.

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
