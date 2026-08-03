Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43AEEC55184
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 09:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRRisUq/REjRGhFwuUDww1XXAqlsdz2oISdcu3DF8K0=; b=kmESwnn0lcQiwN
	jm2AB5NM2GefK/tu6p+VCepXTXJf0JrPsksTgav5mPToRMVvvPFLVsHgXuAkvlgXWF/iVtY1D6iKm
	PZNiXcVZ35ziBQGYcqJuprXkAl/DVZ/xsCOUKzU0U+J0IJB3+36HD5gploNlxu7aNA499yn8erBo2
	8KgOYbOp+Sd4+iEKMHlsVNgs7Z/VjALFRk/1d6+3wSiWDj1ySw9C3NlRoirCXnzLPKskWup3y7frv
	L88D/R68yC2CMYvVeNM5bsPjEhPtIadwCGN1Lycsl7tDiABxxqH9E6uD+JKcAwLbjoSx6IpoH7l7C
	T1W2kSO46lseuncPG3Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqosy-0000000GgKM-2GIO;
	Mon, 03 Aug 2026 09:23:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqosw-0000000GgJp-2DLU
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 09:23:03 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6736sVbf3790743
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 09:23:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1xNhHRmjBylVBe+cBFr9X9Dw
	KitUCaw4odoWX3q9r24=; b=KIB9ZVgRp/HQeDoz/1B9+P/rHvjqgoJcie7rwDvY
	K+RX+SoM5fuaWyAGMUN5MOg1EbyKis91D/4QnaDFkmXoGZkJJk1mkttWfPxdlyzN
	YeAtOB7IATpgBFmzcyJTSGtpCtH1csoQ8meog3+Jjy+65mdLtAw7znNOyVQhsGq1
	bso+Z9rBnR7Rv2krZsl8Ubx9i/QBPSjEBZ9s5O/+iLixLvyUAHkSnTRSaNZpTV9y
	mr9uKHuOAgGPCQN/2WPNhCcvv21AEy+jmlvApaoo2mKG9UDFauyx0OSCdcvGlfYS
	5yOogT5mPrHckBbTCQRlxEBrzaGgVV3N6KiW6RqzZqUzzg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftp4r0pdf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:23:01 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cab041eced3so5098236a12.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 02:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785748980; x=1786353780; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1xNhHRmjBylVBe+cBFr9X9DwKitUCaw4odoWX3q9r24=;
        b=kNUtnGuNXjuabqQobUxZ9VBzW753JQoao09x577CvAe2ILvKwcA+uEi+mBkS4lsIGk
         9BC9zUvgTC5PgnJA5qMaqGnn3dMMhN8aEfIu7LqoBPk6jPdAit0ArJu/TJvDS2PO1SzS
         yNjiSiMysDFbkEbMGHliPs9S0urF1SxQ1TlGMRyQQXzOXno5JEvFvJROb8eKDH4J26b2
         6zMvrPUPhS2XzqZ2Lr7QXHKRfu5yNaK/YQgOeDqSkCIYqu3cONqCB5xSRwWZxh2MBhOz
         ce5D3LxJeZrA3eIOaJbBDExqZ7HUDXcM08WDLDljuZORD45RAmQU+WyWqLw90lSOClQG
         T9WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785748980; x=1786353780;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1xNhHRmjBylVBe+cBFr9X9DwKitUCaw4odoWX3q9r24=;
        b=LdKVpNEbQWVgoXOX+IAsI0fyLXDEN0jjUYi0JlRxNFyCOkbPA16sZ/ImcYOb/hDsI5
         0A5lW3Z3xPi6tkB+SHsdj1dT9+ge0tMuOVV9giT89Bv+IbG+Kk71gcpzcoqxTFUT7irW
         +vn+N3IEKZxWEaAamo79HwsY59lV9OlQG7YEd50nK9QtcIju3n5FE2ucl9IkUOawFu40
         UtCOskKRUEa3np375noDAhm8jEkekOJK8n2UD0wVaZy2YPZh6mdIP2+6RbEPBdxW4KYD
         Fl1Eu69u145Aj0CjKumyBkNkr03/tK/YXvjG9PQxBs4slws06KAW9x8Ssyoha5jo20xV
         LIHA==
X-Forwarded-Encrypted: i=1; AHgh+Rp1lleXwnf/TjH7pYNE7SEdjx1C/LqmyFDagwf4ukpo2pL4Csc8a2k5ZgB+MxMaNarz2HYyy5ydY+E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ4Pmqbn6X5GsgonKKtf0ARJ2uqNU2ousXzRycxlMe2jj1FEZQ
	4MtvUBVfnCkqrfeLFrtVlWH35ESjRCf1RGRKKBBmyUEJB1CK/FyzokYNQ3ajOZ5CoXBNFhghLV5
	xFi2RlhbDzZfb6S4zdwTI6U0kvvmTkMPWhATr1rCkeCBIcw5s3SSVlLL/rEyvpiklehWi
X-Gm-Gg: AR+sD10JhvhUj6kEWCOG9pi8Wl0KFAe7MG1d3xoE9GBpVvbmQ55NADSXK5qLbOEcAht
	aIcZoEafDK4iSR+swg3rJvH9EueeAuccEKDyQmzJ7DqplWJNj8W21JCCV7xo0A8jAOQyErg2eE0
	9oRd8fHnST6umPRzWkp1XL9ToCBD7+phOBpVepJbbFkRv+CmgtWMg0iUVeYVY5hihrvBUkdqd/7
	o3E8XcyR1qTZxPPMxvhLt99R7JzU+uMEA18sNUOVI4Y5H+1KBTmTXp78q5Um7Cw+3EdyyxZGfje
	0ZFUbmz+s2JkjQ8PiVpRUjjh5S4puHP+Hu2+N+KZ3CkAyI9xb5oFdJVufr4CaqZsSj+Yxo4KFce
	T3gMGHrhuYVtjZeFVZkbOEIUv0PA=
X-Received: by 2002:a05:6a21:648c:b0:3c0:9c19:658d with SMTP id adf61e73a8af0-3c92a89b8d5mr10122638637.71.1785748980302;
        Mon, 03 Aug 2026 02:23:00 -0700 (PDT)
X-Received: by 2002:a05:6a21:648c:b0:3c0:9c19:658d with SMTP id adf61e73a8af0-3c92a89b8d5mr10122611637.71.1785748979783;
        Mon, 03 Aug 2026 02:22:59 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153e06fc98sm36259828eec.21.2026.08.03.02.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 02:22:59 -0700 (PDT)
Date: Mon, 3 Aug 2026 14:52:50 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org,
        gregkh@linuxfoundation.org, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] phy: qcom: Introduce USB support for Hawi
Message-ID: <20260803092250.ucoh5qnnnyurgyzu@hu-mojha-hyd.qualcomm.com>
References: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
 <chf57j2dkhhjzigpguldadfld5utepa4sxwbo7fjxk5nq37bhp@yci5agzh46ly>
 <al4EG1FMrI0z1D7z@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <al4EG1FMrI0z1D7z@vaman>
X-Authority-Analysis: v=2.4 cv=X9Ri7mTe c=1 sm=1 tr=0 ts=6a705df5 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=BafedZZDLhzKb9y3GCEA:9 a=CjuIK1q_8ugA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: SW2yOjNAAqegHrWCxFmUcbEiSPae6t-A
X-Proofpoint-GUID: SW2yOjNAAqegHrWCxFmUcbEiSPae6t-A
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDA4MyBTYWx0ZWRfXyS6qvdFfhoDI
 iWzZnA/7oRrO2v9633zTVhOEBy5kaIfas+GM5zOyumWXxSS6ED3wNQztH2vHDlSQQCcYtNpX95X
 uKuHSKNlw05zEUH8BS3xOKfaY9RKp3Y=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDA4MyBTYWx0ZWRfX1tVxzL17hKcM
 ls7V875Tc9k9GQEqYDIrcNlM3D3YajWBm7qNDWc22XGtEIgqNIf+kw1qi1U3jmhgUgwwq3f6jAI
 cjxTZbjMSzx+7rv4dD2rw8+EwmO8xMgv1adnLn9VpOrAOS392O6uPavXCG7rS4qcLhnysePeOZ6
 MUZs3p35/6IYQ5ngsuPCVg+FrBWyYG6qaej0HrKC2BlrwH/QC6Z4jKnNlxJatRBl19ol1BPaIrn
 Z4VEFxpYZxo12OKTYfIwdCp+jS2kdjdzsGTObWzp1lZ4FbgVKW7UVO6+Q/1DnX6p+NeHu75etC7
 H6ADENKbg6vYhqrAv5jd9UuDrbQqHV2yMoiMOkpMMQg/RmQCKByPq2oqA72sVfBpoljBZqXVBhc
 gfbw+mA1p3W+TQWM2K52192EGiNgEjHFkADx7Yzd6pQWCEzF+LmJ5oxtCKbneVWmRdecTyA4mOQ
 wEcbsKvTKnXgi+W0gsw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-02_06,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_022302_685113_A1CD4C8E 
X-CRM114-Status: GOOD (  16.23  )
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

On Mon, Jul 20, 2026 at 04:48:51PM +0530, Vinod Koul wrote:
> On 13-07-26, 13:12, Manivannan Sadhasivam wrote:
> > On Fri, May 08, 2026 at 02:32:30PM -0700, Ronak Raheja wrote:
> > > This series adds USB PHY support for the Hawi SoC. It documents the
> > > QMP USB3-DP combo PHY and M31 eUSB2 PHY bindings, adds the Hawi
> > > compatible to the DWC3 USB binding, and adds the PHY initialization
> > > sequences to the qmp-combo driver.
> > > 
> > 
> > Vinod, does this series look good to you?
> 
> It doesnt apply for me, can you folks rebase and resend

Sorry for the late response, sent the v4 here [1] rebased on next-20260731

[1]
https://lore.kernel.org/lkml/20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com/

-- 
-Mukesh Ojha

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
