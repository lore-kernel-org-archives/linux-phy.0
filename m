Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADFA2CCD183
	for <linux-phy@archiver.kernel.org>; Sun, 19 Oct 2025 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFgMcRm+Uqe+CyaB1RndcdFosO2pbbCDIxnPYeQHORQ=; b=QS3ANqaGPVSAdH
	fD95cKfZWhNW2qP3o9oSj36/iwOIzuMn4hsIPylountNvKknB6gw6Mthtd4i/JUWgXzv02vFySFSm
	2iTDGCwFc9MAugPpcPA4BtLVMB0Vi4G0kv7jetffWQdSBNoMUgGvU8Za7MZ4SzbTvXrI03unkYdxb
	v8P1UmZQdJUPg8keRSoOnB/bMXE1vI8GmlN0OdPgGf/9GwfWdK6+o6icgsppxDWFaybxwCIdNhOVx
	yr5YVSv/pvUyLRTfwplKIWtpXKq7fK0/TspYwO+hucVrenTyrcHSjkf9akqFOkkXaxU/i27m+19uQ
	sgCoQjw6pZfSsG0WyNVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vASIy-0000000AzeY-33Ti;
	Sun, 19 Oct 2025 12:14:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vASIv-0000000AzeD-3hUB
	for linux-phy@lists.infradead.org;
	Sun, 19 Oct 2025 12:14:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59J4F2jS022447
	for <linux-phy@lists.infradead.org>; Sun, 19 Oct 2025 12:14:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	puNPrhTEXrfqnZblxaqGqUil1ruzTr+zCkgmrxJ5Bek=; b=En65NgblGY8NIrNy
	BjKP5KUK4ujMB3MNse92ose8la5TWB9nGsRowsVSqd47vWUpN1okqFrwbLRbe/Pe
	FNXx2CSQ1X00JbGgoIsnH6KHLWY1Qolrujvn/NYfSUhBI4uBbBj3taB/vAEKIjMg
	G+LNq+UP+2K3EqrMaLSzL+a9/fwmXBc2Vc95pgWrtnRnurCCfm6AZnlgQNC/gZv1
	RIiZAK7ux1qSlEfc63GcdYqlW9InQamQsiC4mUnRhK9etJjKT0GL+cHeJx6Kjb/s
	cRb/ARXhJ2FMsgtGx0SoulEaH3RtZW1rxb22UtmhV6SMakH6axSzxO6MljqW6bs8
	EtMyZw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2gdtc50-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 19 Oct 2025 12:14:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88ea6169a96so545159285a.2
        for <linux-phy@lists.infradead.org>; Sun, 19 Oct 2025 05:14:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760876068; x=1761480868;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=puNPrhTEXrfqnZblxaqGqUil1ruzTr+zCkgmrxJ5Bek=;
        b=mipOPEASBqANdDZ4hzpGBqOmq4ARGxuZHjq0/HjpAsK11/bQZYu8rOg3bAjmB9pCh0
         rsbXvutaYQLaDwJmQA18hZInTjT5k7SJH8F4hvymDYcJaD8otGLFG3D6idKFpizXJNsN
         buOe1n2IQ9111jy1ktSJcjcgRkoZS1roEZPmBFau+hm31nXLoad5FEh0o1Hi4iRYL/DJ
         Kzkxib/GUgE4T6pS+wmqaVKbeJ/mlOMjkDZ0OoUxBkXgyzaDAw15J2U6N9E8svuHVf8N
         OIgt7Fp3i8HCIvkifCZSXKttcS6QS1+lV51zT5afexT82YNSURKvcHFIy+7O9KKM15NL
         a78g==
X-Forwarded-Encrypted: i=1; AJvYcCUxNzLwLTI/sdu8XnudzfBI/cjqQiyJc0KyqG5MLqLcCA677X8g8RDzjwB3f+2tseXH2ZY6FZDZAFk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+bA+uLEczNreRua0ZEEaqgOKf12rg0GyDd8p9sU2+kyc7z7nm
	q1GNh+PqZJmM/Q4TB95BTys5f9kGLMAlcOLRai5VwKB9mewfeVnnWrsxf9rFq6BzgF1DfXvQbcx
	tS4QgqmeGJS5DScAXf4zl6Q2BGp5GtfdnNt4mLnGQPiEwKLD3sn0VJdzzwkMnWAjHJHR4
X-Gm-Gg: ASbGncuzKrlvnIKVsmhXcTC3tVLKeWK108vxAwsDn522hiAXH89jZgJx110509aO7Yf
	9kJYKUjjD2lONtrnzsV/OBmL7NXvV1v6aPxgs7mGK2P7XKC64vMn9eK3H6i2am5bEC4W5EE1R3x
	++Koh/hvo0bj8vIXxoVKAHPENGcH/8uniMe21V5NXeFqFYHGTGpXt4SELZnhgLo0d4EushinsB+
	B3+j+E8rwLImFSGDJbgB8SGkCE7QtrixlIPA89QI825dC9Ke4Rol7YBmfygTu3sXI0fhSO6PEap
	w9/wKCSIwROSxW0K9dNDEHJkDBrnq9rwWWO8bx4Ui2lb4J7HLeqX4O8AxvZpBV4ilLPtsCtJN+o
	XIU5nsVRcBcCly0wsG2r0APoaoPNn5fOVdcDxHSlXG8yDwKTIh77qWEV8fUzcp0JaAeqSLPuS0o
	nrKwu0H7MFctI=
X-Received: by 2002:ac8:5985:0:b0:4e8:911a:2af1 with SMTP id d75a77b69052e-4e89d3625e2mr152707041cf.46.1760876067805;
        Sun, 19 Oct 2025 05:14:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8+CZ0NJ9bBoZZ1GZiXuCbYiL/YP/qmggrLH+uJV7bA2b9ganhGBoaFnRrleOl3gY/Yk+zFA==
X-Received: by 2002:ac8:5985:0:b0:4e8:911a:2af1 with SMTP id d75a77b69052e-4e89d3625e2mr152706601cf.46.1760876067319;
        Sun, 19 Oct 2025 05:14:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591deec0b98sm1528227e87.40.2025.10.19.05.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 05:14:26 -0700 (PDT)
Date: Sun, 19 Oct 2025 15:14:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 0/3] Add edp reference clock for lemans
Message-ID: <ql5ps7cv7x6hz3otzz45uv6pbr64x2hdapa66vq2jtnt6l536h@kbktvupxpf4y>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <7jmk3txdrnit6zn7ufra7davmomggd3graizdu6wqonp3lljza@mfnxt2owpknq>
 <4bd619e7-e9ca-44a8-9d36-10c18d7a8157@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bd619e7-e9ca-44a8-9d36-10c18d7a8157@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX4x72h73sp3Gi
 k1erPL2A/6gji4TODu+N3CqcnrGX75M3GTvyOfV5R3LchDdTbY2V92OIOeu2cFopjEZ9/EhoFkw
 IOeS+vd+buybmcluQsErczXvDeZuanKmnOb+8y394Wsy2PIjQxgOrwh8ucwjC2leJtKK3YA1Lmi
 85CYrR+udboWNx3Lt2Lhu32MLav9UQboniC9Uc2m/olp/zgsTEGfxkY6k/LyzyA9RVkVkTNUhhz
 /BT9ZxYheVzX0JRGPOcxNGT7i54Lztl4SHikjyfjpaIQmHCY0iM2UEbn9EURz0zmP7YgT7vpfZ0
 GwPTl6ECXTZ3fo/pu9F++esgani321+RO9pHcAiWIeXioonXIHKB5SyrUgugkSVwJL0eXBI8MpV
 G9G1KFmGjkumeKhma1qrlp7bVTrgbg==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f4d624 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=FYAu2dUYg65mSESSDlUA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: s5m4jYAlqOsw0vEem6itKH7H6Aau4DwL
X-Proofpoint-ORIG-GUID: s5m4jYAlqOsw0vEem6itKH7H6Aau4DwL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_051430_057020_7DEBC00B 
X-CRM114-Status: GOOD (  14.63  )
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

On Wed, Oct 15, 2025 at 02:49:08PM +0530, Ritesh Kumar wrote:
> =

> On 10/13/2025 6:04 PM, Dmitry Baryshkov wrote:
> > On Mon, Oct 13, 2025 at 04:18:03PM +0530, Ritesh Kumar wrote:
> > > On lemans chipset, edp reference clock is being voted by ufs mem phy
> > > (ufs_mem_phy: phy@1d87000). But after commit 77d2fa54a9457
> > > ("scsi: ufs: qcom : Refactor phy_power_on/off calls") edp reference
> > > clock is getting turned off, leading to below phy poweron failure on
> > > lemans edp phy.
> > =

> > How does UFS turn on eDP reference clock?
> =

> In lemans, GCC_EDP_REF_CLKREF_EN is voted as qref clock in ufs_mem_phy.
> =


Ack, please fix other comments.

> =

> ufs_mem_phy: phy@1d87000 {
> =A0=A0=A0 compatible =3D "qcom,sa8775p-qmp-ufs-phy";
> =A0=A0=A0 reg =3D <0x0 0x01d87000 0x0 0xe10>;
> =A0=A0=A0 /*
> =A0=A0=A0=A0 * Yes, GCC_EDP_REF_CLKREF_EN is correct in qref. It
> =A0=A0=A0=A0 * enables the CXO clock to eDP *and* UFS PHY.
> =A0=A0=A0=A0 */
> =A0=A0=A0 clocks =3D <&rpmhcc RPMH_CXO_CLK>,
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <&gcc GCC_EDP_REF_CLKREF_EN>;
> =A0=A0=A0 clock-names =3D "ref", "ref_aux", "qref";
> =

> > =

> > =


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
