Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D819C10F2865
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 22:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asLAZgBn4EN2BoQGWF14MBiQfZGvxVMyzOvzAVLbsK8=; b=2EKHpyXP7vjtus
	elN0297oPqpjkUxfekityC+PgIRoz3L20R/krvUumqdZWnkgh9KUgnnIbBNhgC0RdhJlDWmhse50/
	MNLAo8bVBHXwc8Wh/FkceIVJcp+YpEzUcAr+MKNIolpA7LnVf5MIupl1Brll8nQPC9cBc0+I9ToJY
	vAXd/CY09t25ViW0SY2dfX22fu9Dio+befP7WoxUSI+rs1c9bRmwDNxyHlrmVM2JZYeC72+41YNo6
	u0VoigZKd/5qm4rv8qx75+bZ1CHpQ4RhsAZp55gBTH/xMGBZY754YTYklUfHMLfPxgAtMIstxoz29
	jkmXmW+G6BzVWRTe04nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6Fi1-00000008HwO-2VLF;
	Fri, 27 Mar 2026 22:31:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6Fhx-00000008Hw0-0Fw0
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 22:31:15 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62RLfw2x2239224
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 22:31:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v7WKFHZa01ynUTDVkoNUyIYc
	RPr9NH/0nVWPZPdPQ9k=; b=Q/0vK7mda58L9rCaZiemnuT+S0aIHs/9Gy437+84
	nJ84HGm6v3yzi7uWYQZ1bPNgfbpYBJBIhNFpfxiJlG0tpthp3LgRMRzktJZzL5AK
	ROgcIUfbDMKD+W4YsLIh2zvOK0arg5L3BbNv5u5Abs8y52+zFpubV2J07rXvnd0o
	fX/tJ7wy8Bx+bfdCrGc9dktB8toXGl4Ji4sjFqCNRlRbIW6219WPxkFQUox/R+D0
	gUYFXvVj5GNx8MPKyPTjFtq7y/W4sOWUmbQlBtldY+Xt5ktx8Cupu++iOtoJsFic
	fTjT3+UgXOOvLk4zbaiXUuvRHuX0Fc07AbqjEOt033SKjQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5vvv95aw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 22:31:11 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-82c38b85ca2so1954617b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 15:31:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774650671; cv=none;
        d=google.com; s=arc-20240605;
        b=XtM1Oij2RTCQiQBHojotgn+Ttc/fcQZSGED7a8DX9NpgT/brAyJBRlThSu6x+LnRdH
         +8kfEQNejsjQVDmy0k8msDboFouUv+QXml63MgIVl8oDiBFdULm6Up+zOSqf2R3pzog/
         R9OwpizvzYkfuC1UhSkZKFbQQ9zd8+c5Yagj85m12v+Jx5zohsKig80KYUCwQ6Ys3L2E
         5dvarMj8YXvJ9NnYI4t/FY4cfM5OwZ5dYi8jh285B7ZT8GJf/Kddv6NKPRRwglIFaV1k
         goB8sX8YkWCU4gp/FeVa6f+4SicKv9uTgU5DoO+ImwOKWfiqkroRlkzdYrC4bABWDPlq
         vdkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v7WKFHZa01ynUTDVkoNUyIYcRPr9NH/0nVWPZPdPQ9k=;
        fh=v9OYZdSROiH7Nmgv9saFn6YfuoBqLrwRCn5d1JHpG6U=;
        b=lBxhRaFj92oGPikfxpm+ZPoLKbJMuI5JLklCeZLIT8uhivMpWbyqR7iyicsd05G8V/
         NAS9tNbhIUnt4AKOg5LIzl2TlAioZ+5buqY5uDKa4bL6LEoVMywAc/gUEd/p/mTPOPrc
         e7HRR2yjw3IYIXeQ0/PXrr/6Le/VM4l5knKP8VLgr+UEr0hm30Nqfv2bmyfpxWh+zc6W
         jtJPmCETzVPwIOSG2ZU9jWxEG2ZnXrP0q2USaDZ/2A0zqsXk7JFM7TV/97EF1baEyjPn
         BdwAX4Yzz24ejj8t/Q7sM2YV0/EiUJkCPw8537bw3xh5zydIWOUydB+YcPh4dM2dvD1J
         NlXw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774650671; x=1775255471; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v7WKFHZa01ynUTDVkoNUyIYcRPr9NH/0nVWPZPdPQ9k=;
        b=aUOSz0SA3teOwOcqN/rWKFm6sKN6n/H3h5mcEuoNMxsdF3z7PPiF5XYc2nm5ixEqwY
         UstLi2ujv2/XyZ8+X6rZn/R7X4i4OhjCBh3UiY742dwfwIky+ICx6Ajwtanr++14CnJI
         k9ehTT94D/VMHVl9JjKNVk19Jt7QCdG9KGjdlhHSiUiqHP+Y6kOeoRjNi/pruVN8d9Yf
         NBXuLbIhQXA5JHDehssFO9MqwHMI4Kt8K6SGq5HI0Apc9LOqFh+Yw8AfNwTuN826PGK1
         P/EZwxFlAg2vqcg8JDZNOWyFvA7DLNcamHXAWtlUU+Acns9Yb9MrqvunCitSnAFJgRPO
         Xwow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774650671; x=1775255471;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v7WKFHZa01ynUTDVkoNUyIYcRPr9NH/0nVWPZPdPQ9k=;
        b=WLj6LvQYv+8m9EDjgQEPi28fRIzf3i0uBeO3EqxAJ+lGzuqPx4VApQ0VKUrZ7ms3dC
         czCs+EDHc9jo7DXJwBNXVLgm3HmGClKoSt/iws1XNux07BQHcCAhE7dRmzoEbIzEiV15
         qmJ2ciAl3Bz/IKTwGFUfZ/Qdgj6VT3aXTc1iwF/Us9ms7+PdwQnNnLCBZ8gY0ORdTGjX
         dgV0Bi8Iiaz7m1qzfckV58Yikb0U9lhsfHs00t/R8R8Fh0eLz9YVJ3P255nC/MPRnECJ
         nlKYFWKpCfqNCmSF0eKUryVWBPHn2rwq0TKaRnpbOAI2ckVnZ+YeplBuVX5KUmrjBoKN
         TngQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDuGo4jdv304Pyp3Jvwr1c+3xR93t8cSY9ynU+ugq+3RA/UglaodOheh1iXGW6vnOr0EYyt8kXMUw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEjaNkGaWutHek6YNbFkLStvzspju96GmzEPgoEr9FpFlj3p6t
	+qo+FuqfOa6zzJSiYS9siY1nYGmLDJIAAnHMR7SGHvzkRjIs3l/Puep3fgcNRAJScfTVSjfXEeL
	s8ruw5eHpC+WsqVSOQb4xW07J2UltUooXgSu3G49VbkwDBYVkfjQlDFJ+6hqnyEelpNlLJObS6t
	UHa3cu+R615IOr8iiKYjJoluceC6uQdJEAXLX5bV9AH2U=
X-Gm-Gg: ATEYQzwfVsJFJlHiOjmcRZMWpPlW0PUav/sLDE42Mh1rTVa2skL0W5GeTqEOJY8XyLS
	SUuEnpT7ZLejsURB63/fQdR/0eQ+idgpJLbWzfq/Lbk47B3prxq01Yd1fp5NSMF9hYFDFPPtuv5
	yvGJs9T1PVqb68oCrr6NZYSjiiShx3qn/mu5Xq97ThVUUH7KUSdqMASfb66Z5bUPt3fdHahFWjs
	ou8xYtm8Cp02Mf9FAkhuDrA8nWDX6YOxZnLik0=
X-Received: by 2002:a05:6a00:aa03:b0:82c:75df:10ab with SMTP id d2e1a72fcca58-82c960d66a6mr3844212b3a.58.1774650670379;
        Fri, 27 Mar 2026 15:31:10 -0700 (PDT)
X-Received: by 2002:a05:6a00:aa03:b0:82c:75df:10ab with SMTP id
 d2e1a72fcca58-82c960d66a6mr3844167b3a.58.1774650669762; Fri, 27 Mar 2026
 15:31:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-2-0c0fc7f5c01b@linaro.org> <aEe0uBeOge5s3CG521FGdJhY-snL7v7U2KXbg1IAqMn9oy6mslb2GJ9JfYCJ3RRE0L-Qr5opUYFUyBJp3qEraw==@protonmail.internalid>
 <62zcubxembr6iat4d7n3o7aecqtx3ne2a42ilxfoap65oaefhh@mecahghgrwrf> <6c52f934-1b08-4e93-a753-d4c90e827f1f@kernel.org>
In-Reply-To: <6c52f934-1b08-4e93-a753-d4c90e827f1f@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 28 Mar 2026 00:30:58 +0200
X-Gm-Features: AQROBzBzJ3bpD6jVINfR2GFtsJ4wmBDV3W7m5wN_gCvaCyk9JMJM982w8JUW8hE
Message-ID: <CAO9ioeW2Xi_yQ-bqH0=ST=dx6-1bPjnNEeT29ctdHp039_yeuw@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: "Bryan O'Donoghue" <bod@kernel.org>
Cc: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-ORIG-GUID: 1Mtka49iys7xEcuCyYIrT2jaK91G2aLD
X-Proofpoint-GUID: 1Mtka49iys7xEcuCyYIrT2jaK91G2aLD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDE1OCBTYWx0ZWRfXxTCzMH2SwoX/
 +4LrqddDbhiv7aNZyK3uCtcLdziGob92VxfgingT9fA0/Fbf34toUjADHvyYUgTnOAmg4oMvtKD
 p01hRTxWdvm9cnjO1opDlpGp/Y9CspF5ccl/l1O0JF8cqO8AJA1xowvRC97eLQ6O73qvSNSKS8F
 VXd0dXbIa/aB+mHvWKa61xuY2OBQVHbPDb936kLnf9FdbeoygemKD/9tYVGRRr4eSV79jEyUss7
 PVpAJe3OEygRG0n4nmPXBSsz0SC5Kyp9zl5aG6V9/dXkTHxmYMjQ44SAjMyxFPmeW+rLCLhGn9k
 aS30ZBRs/fKQr+4y3GfxgJmBoSJJgkNXe4wOXFC9hnqtpJg+0T3BY+iNuL4Mfn9JnvJjAerLYrE
 dvjcQ1Ghalpf9fHEEnjD29Vw2r4ILvaGtA5XDSoqJ0bAS8JS48nk/N0zyMs5TqQITl2yM9GKqHg
 V0EkpCwXE8MukKPYAXA==
X-Authority-Analysis: v=2.4 cv=PL0COPqC c=1 sm=1 tr=0 ts=69c7052f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8 a=M5UCi2xDz22XXY1QiL0A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-27_01,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603270158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_153113_237422_D2879D04 
X-CRM114-Status: GOOD (  14.15  )
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

On Sat, 28 Mar 2026 at 00:11, Bryan O'Donoghue <bod@kernel.org> wrote:
>
> On 27/03/2026 20:54, Dmitry Baryshkov wrote:
> > I think, I've left similar feedback already. Please rework a single
> > structure-less table into generic and per-lane configuration. It doesn't
> > make sense to repeat the same configuration N times, just with the
> > different offset.
>
> If you remember you also said that was fine for a follow-on series after
> merging, and you asked for a commit log to that effect.
>
> i.e.
>
> "The register init sequence table is imported verbatim from the existing
> CAMSS csiphy driver. A follow-up series will rework the table to extract
> the repetitive per-lane pattern into a loop."

Ack.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
