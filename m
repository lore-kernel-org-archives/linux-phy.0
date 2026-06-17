Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7AC8CD98F0
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jun 2026 12:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yc90Mab64Xue1zUzAhYyWL0C2Y9w6mjvwj1f0uHIm1E=; b=dqHdTZw0tE7cHo
	OjBtqbHH6CjW+Csuj+2+MYek3RVjN/U0xHHCt9GlQqwjOIdxlzoZJQ1z8mG0U4aAX+7kXV2Gpx5lW
	XcHhnZxZVPOHVKLCkFfeGP2JrUgxbXYGyE76Crww3TW6Klw/jMAv4zU+mH+xQ9OIlznSLlnTxaCNu
	TwPynJHu/31rT4iT5p6UGHiI3HYz5tzIJNtBmx9QQ1MmPpwb9LGhzkQYQYo/DLRAypwTcyqwPY3/t
	V3YvJSuLn/KZhyOcmURLu9N+Zm6LEpway9Pn9eoOLCnVtDVm9thx6DXEsXjd4vk2H6ewGgiXnRFoX
	pkMEej6jCinjEgv6twkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZph4-0000000HMqo-23l7;
	Wed, 17 Jun 2026 12:48:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZph2-0000000HMqS-0ZHq
	for linux-phy@lists.infradead.org;
	Wed, 17 Jun 2026 12:48:33 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65H8V7Kt2291377
	for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 12:48:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZJF6u/a89oyxhTG3HTO28Hbg
	scfu0gN23dEPd4mDnnU=; b=Sb0rsstTnC6r34y5brXEKwpLM+MQYVbvU1Tcysyy
	WpcqkIF+10wTQjYCZNwqCE9Ptmji1wtP3Iy8lTvMJFSJx4td/yVhF1ZmwBeiOcze
	4fEIIZno21U488IWX8Minb5X03wCK/Ru2SE//9/1BlhK0OX5H64xOza9PaZI+9Y4
	6TIPRPhoeLQfhpsZu8tYuNBVqXvPLn6KVsLTcJE64Kl4PpYYR5DJGyYVZo7b6ScI
	U/KV4MAdzq4zgsi2JE4uNudVOoYGM9irMq4ryv9yFmWE9c+SgQuTzJjknJjY10vO
	fL44hN4Po2xiFjL0jjLTWtsas7phV6kuVtqQqFJDj9oI/w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eueevk7b6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 12:48:30 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c889d1eebafso234218a12.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Jun 2026 05:48:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781700510; cv=none;
        d=google.com; s=arc-20240605;
        b=MWRNNCxjbwtOGV+C+TqrXDezAczf/HDnJegf/BYIED0lbTJ4p46wPN48xnjnTq52tk
         SjiCC3QlbeqjhvAGzAW590co+7+pSZuVEZksWjfC89T2yEZ3+oOOylZZkP6pQmB1Uou/
         EX/xbyA1bgkdsiMi4ZEIY7bMJx9G1wJlSA3/jFGRzKUx5IQR7KFn9ksCAXpVpbrnFjIR
         KY8Q22/5FJ4V7MSd9EG3oG2uqpQOT0A7fNKiVdrlcE/Nb/c1vY3O2TlrJyxA5lrajN6W
         Qy3KS0PimXHoPtGBm90VwrKXodd3amuAnQUOZIN/T8dMQ1fts6ZfZcvB9y6MX1l4ij2B
         rVAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZJF6u/a89oyxhTG3HTO28Hbgscfu0gN23dEPd4mDnnU=;
        fh=ScIr+NH00C4aLS9xBuTyqdp1B6OBJYsx4LFFU2TBm5A=;
        b=X8zjc7B8UwuEhy9VaZkQ4AxcxdGivXlpaIlvb5Ofq7DK/TRLJU1p7kogRnKm1TYxTj
         dCocfnOXUKmSXl+r0oN7MMrbwETOIwMNMRt3UDr3dHFTRKP+ozceBRRI0AxwInsJcXYk
         4OfsqKbLSJ+LeOavBYV9OSHQrAqQgbE+oFKmXArwfRyjD1X1YM3X+mmncDsmhPVgKrHC
         YrV+8Aejt6gxcV7I0an7MdgHPisRdHwn+tPokm5PV7GWuieRwIHEI5zlUpIVZvB0MM89
         K8LHVABSSancsQadqczqOEk5YQMrz2dvYGQvvBB3KBm56qHjZnXEWtiZlcy0OqUPKwWf
         cm3g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781700510; x=1782305310; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZJF6u/a89oyxhTG3HTO28Hbgscfu0gN23dEPd4mDnnU=;
        b=dKYT7Mhk3M16HPc3YvynY+y3NQb2BkmYt4NGuVhxdooA6vZJQDnU0AexfzGsYNggiK
         R9f1VBPh9Q9gsXZlP+rNmPpUwp5Y+tOs4ZR9HLG7GItpP6aDbKyMOUjFL2xfXgGFId/P
         i/akPmsUe5FA58L/dXtMNub5lpPP2L2VSgSZ8jLQEOjbC+xptbx/NaLG4f0o23WxxGMQ
         22yjTvYla/0gkxy1ob/RduT4qZfHaS/fJPp7n26HRnSxsYfCgevCdnlnYInlaKYa7qml
         yRUOUfqjLjSMncV9VNCZefeSPW6h8jE5WyFtWr4y7cXXfbpn+Qnosgx0odHNVJi4/xqn
         W8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781700510; x=1782305310;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZJF6u/a89oyxhTG3HTO28Hbgscfu0gN23dEPd4mDnnU=;
        b=bxafoJOpfgbUm6Qoa1gE+eG9nCYX+SWrPDw8RBoIVYtcBxa6waZiobsA2TcV3NTYqm
         LrL2Kbw1jwhCx0IOHED6NUyzn9C+NSOwe6LM4wnh10Sr5hcjac+50Sfm3wSVHb9GpKJJ
         s2musLOuwvQjjGP2e5V4f3dSFA+pXSE+DqogQK5AQACpwqcJqyvoONnJcAOmNQrTsAv2
         8L6nDv/YBaBVjzzG8gAltu7LxdqMlCXse4S35519D0O4HDBbKahlShRzHAhKjpwVI7/h
         BoDZLcjEiTJT4DwZJzgKsO6E0PW4kAzGu0M2HJiEFbtICEHwpz5ImTzNeDlfX/y//TtP
         aE7Q==
X-Forwarded-Encrypted: i=1; AFNElJ9Ze9lPicpdVqEtAHheiXygsARIgQRrqzuZc/jrgTFeylujhqTMdL9TQtuGbUyYornbDsCgce26iJ0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzpelonF+hMiQiS6hyuZoC29ZuJNQWsta1UdoexhrHWVQSpEu/9
	DXn9Gtty+gN9EwAnIQkIKxM2/QcPCJiGuyd2zga50y6Klu78IlAp19DF+IHRQ5Rsn4PML9bKEHS
	Io/Bfcxj2Dz5EZaU2Ih1wjnUN+KYu2XoWAwa0van3C+Odnx8HSq2dA0fMnd8hJAetPTkl1EIVbW
	xB7P4/S4KlJVVduS1WpV1R31/BHEUi2L+1wypqsOizu3I=
X-Gm-Gg: Acq92OGeu33SCw7yvCxJq7ZQyMA1pqi6eSEkrffOLzK5sM9MOPtpQEg/Ual3KeE8xev
	dYZZYUw7/Vldjy2trIu1+yEUGAcOM3gNFeNyDTfQfFLoY3KSsTKr3Md2wE3rxiToTn9qk9tqlXn
	/X18Dm1ibDXfatXUiUyZEPhOPF2SoW3SzGBxexVrDn71520MYPJ0NI7F147/4kG0JSFDc5um3d9
	khCkAHHIJ5bFtOTuYhxUml2+1AZ/Q==
X-Received: by 2002:a05:6a00:348e:b0:842:7992:bdbc with SMTP id d2e1a72fcca58-84524529a80mr3916373b3a.28.1781700509790;
        Wed, 17 Jun 2026 05:48:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:348e:b0:842:7992:bdbc with SMTP id
 d2e1a72fcca58-84524529a80mr3916330b3a.28.1781700509240; Wed, 17 Jun 2026
 05:48:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org> <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
 <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com> <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw> <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
In-Reply-To: <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 17 Jun 2026 15:48:14 +0300
X-Gm-Features: AVVi8Cfcg5pAZuZTe-ugeVW0fqcByYJhAO0tSKWmmXXpUZyQiDgZdXY2-T4O6-4
Message-ID: <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE3MDEyMSBTYWx0ZWRfXwKCVdBTghIcX
 78iE/no/+/eedhRHPs1KUpm5pF8i3IkqPrmmZws0SkiN2M3Mx5M5stXL+pG45jTsPpDh7uBBCfv
 aevmwMzZ14BqQ2iVSAUjLHSaVNXWMwL49ZK86UaHN1Vz7Z4yCi45nExDcAOif09tUNMGMEBjDFU
 5zDZ7tk05XCaBZkMbDYTtBe/WuDOYDt1IlnV/e7OzssynyPc8vC3UOD6hzp55MPMC8ugcSsx6DI
 3QKUgVprOivVr/GhWZPY+rDfDQK7fe2TpBdYPUg7HyS3rt6ym+dW9Exo+QA5yg5eSMih5DyWkpW
 gfXeCWxC92Jwye6EtYATWTFys9K6L/a6JOAajlgwKwVtjok9FCPLiiRG9Uvh+8vaTwum+q4NWAK
 joKoNIf+/NtpvejO2vtIWRRQbD/q+r5g3UPZ7lYjVLBrP4Uasjb3flJctms2anj0+dqAfy4Ilvk
 ir36F3+VQUTyyQ17c0Q==
X-Authority-Analysis: v=2.4 cv=LM1WhpW9 c=1 sm=1 tr=0 ts=6a32979e cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=AXN0PHSXbqqaHeSrhoAA:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: Kt0vJ8HK_xmbYYXqnQelxrQv289zwQma
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE3MDEyMSBTYWx0ZWRfX63K5aBU6HSki
 7HlyW67InP05e6EA39NFBwAQgKivywROyDW/yzOGbb7YJ7o7Cw/mSYoqaY3HSz6G77g6/c4tV2M
 wQLiOZo6pLNbSRuOVsfsId8+c4B1SEM=
X-Proofpoint-ORIG-GUID: Kt0vJ8HK_xmbYYXqnQelxrQv289zwQma
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-17_01,2026-06-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606170121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_054832_299604_7EDCD3F7 
X-CRM114-Status: GOOD (  43.65  )
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

On Mon, 18 May 2026 at 14:49, Kamal Wadhwa
<kamal.wadhwa@oss.qualcomm.com> wrote:
>
> On Sun, May 17, 2026 at 08:18:15PM +0300, Dmitry Baryshkov wrote:
> > On Thu, May 14, 2026 at 04:09:18PM +0530, Kamal Wadhwa wrote:
> > > On Wed, May 13, 2026 at 06:14:20PM +0300, Dmitry Baryshkov wrote:
> > > > On 13/05/2026 17:29, Rakesh Kota wrote:
> > > > > On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
> > > > > > On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
> > > > > > > Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> > > > > > > - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
> > > > > > > - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
> > > > > > > --
> > > > > > >
> > > > > > > commit 457abf6e7ac410430c866842e08e602ec3daaa51
> > > > > > > Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> > > > > > >
> > > > > > > arm64: dts: qcom: Add Shikra CQM SoM platform
> > > > > > >
> > > > > > > Add device tree include for the CQM variant of the Shikra System-on-Module.
> > > > > > > This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
> > > > > > > the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
> > > > > > >
> > > > > > > > diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > > > > new file mode 100644
> > > > > > > > index 0000000000000..401e71720519d
> > > > > > > > --- /dev/null
> > > > > > > > +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > > > > > [ ... ]
> > > > > > > > +&rpm_requests {
> > > > > > > > + regulators {
> > > > > > > > +         compatible = "qcom,rpm-pm2250-regulators";
> > > > > > >
> > > > > > > Since the commit message indicates this is a PM4125 PMIC, should the
> > > > > > > compatible string include a specific identifier for the actual hardware?
> > > > > > >
> > > > > > > Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
> > > > > > > the fallback allows the kernel to apply specific quirks if PM4125 errata
> > > > > > > are discovered later.
> > > > > >
> > > > > > This can be ignored. The compat is a leftover from the historically
> > > > > > incorrect naming.
> > > > > >
> > > > > > >
> > > > > > > > +
> > > > > > > > +         pm4125_s2: s2 {
> > > > > > > > +                 regulator-min-microvolt = <1000000>;
> > > > > > > > +                 regulator-max-microvolt = <1200000>;
> > > > > > > > +         };
> > > > > > >
> > > > > > > Do these regulators need to explicitly define their input supply dependencies
> > > > > > > such as vdd_s2-supply?
> > > > > > >
> > > > > > > Without these properties, the regulator framework might be unaware that the
> > > > > > > PMIC regulators draw power from upstream supplies.
> > > > > > >
> > > > > > > If the kernel dynamically manages the upstream supply and its reference count
> > > > > > > drops to zero, could it be disabled, causing an unexpected power loss for
> > > > > > > downstream components?
> > > > > >
> > > > > > And this is a correct comment. Please provide missing supplies.
> > > > > >
> > > > > As per the Qualcomm system design, the parent-child supply relationship
> > > > > is managed by the RPM firmware, not the Linux regulator framework. The
> > > > > RPM ensures the parent supply is never disabled until all subsystem
> > > > > votes are cleared.
> > > >
> > > > How is this different from other, previous platforms?
> > >
> > > This is not different. In the previous platforms too this is taken care from the
> > > RPM/RPMH firmware side, the only case where we may need explicit vote to parent
> > > is for non-rpmh/rpm regulator rails (like i2c based regulator pm8008), which
> > > may have a RPM/RPMH regulator as a parent.
> > >
> > > Even on those previous targets the parent rail of all RPM/RPMH regulators are
> > > internally voted by RPM/RPMH FW at proper voltage with required headroom
> > > calculated based on the active child rails. This was done for all the
> > > subsystems (including APPS) regulators.
> > >
> > > So no explicit handling from the APPS is required for parent supply.
> >
> > You are explaining the driver behaviour. But the question is about the
> > hardware description. If there is no difference, please add necessary
> > supplies back.
>
> I understand your concern about descibing the parent-child relation in the
> devicetree, and given that we have been almost always followed this for all
> the previous targets, it will expected of us to add them.

Yes.

>
> However, we want to avoid the unnecessary access to the parent from APPS.

Why? What is the reason? Do we want to do the same for all the
platforms? Only for Shikra? Something else?

> At the moment, I do not see a way to avoid that, if we add the parent
> regulators.

That depend on the answer to the previous question. In the end, we can
make the driver ignore the parents by removing them from the regulator
desc.

>
> @Bjorn, @Konrad - can you please also share your suggestion, how we can add
> parent-child desciption, but avoid accessing parent supply from APPS, as its
> Qualcomm's system design to handle this on RPM/RPMH firmware side (you may
> recall we had a verbal/offline discussion about same concern in context of
> RPMH regulators earlier).

That's why offline discussions are bad - you can't include other
participants in them.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
